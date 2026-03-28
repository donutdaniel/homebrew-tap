#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"

ROOT = Pathname(__dir__).join("..").expand_path.freeze
FORMULA_DIR = ROOT.join("Formula").freeze
README_PATH = ROOT.join("README.md").freeze

FormulaMetadata = Struct.new(:name, :desc, :homepage, :platforms, keyword_init: true)

def extract(content, pattern, field_name, path)
  match = content.match(pattern)
  return match[1] if match

  abort "Missing #{field_name} in #{path}"
end

def extract_block(content, start_pattern)
  lines = content.lines
  start_index = lines.index { |line| line.match?(start_pattern) }
  return nil unless start_index

  depth = 0
  captured = []

  lines[start_index..].each do |line|
    stripped = line.strip
    depth += 1 if stripped.match?(/\bdo(?:\s*\|.*\|)?\s*$/)
    captured << line
    depth -= 1 if stripped == "end"
    break if depth.zero?
  end

  captured[1..-2].join
end

def platform_label(content, platform)
  block = extract_block(content, /^\s*on_#{platform}\s+do\b/)
  return nil unless block

  arches = []
  arches << "Apple Silicon" if block.match?(/on_arm\s+do/)
  arches << "Intel" if block.match?(/on_intel\s+do/)

  os_label = platform == "macos" ? "macOS" : "Linux"
  return os_label if arches.empty?

  "#{os_label} (#{arches.join(', ')})"
end

def escape_cell(text)
  text.gsub("|", "\\|")
end

def load_formula(path)
  content = path.read

  FormulaMetadata.new(
    name: path.basename(".rb").to_s,
    desc: extract(content, /^\s*desc\s+"([^"]+)"/, "desc", path),
    homepage: extract(content, /^\s*homepage\s+"([^"]+)"/, "homepage", path),
    platforms: [
      platform_label(content, "macos"),
      platform_label(content, "linux")
    ].compact.join("; ")
  )
end

def render_readme(formulae)
  rows = formulae.map do |formula|
    name = "[`#{formula.name}`](#{formula.homepage})"
    "| #{name} | #{escape_cell(formula.desc)} | #{escape_cell(formula.platforms)} |"
  end.join("\n")

  <<~MARKDOWN
    # donutdaniel Homebrew Tap

    Homebrew tap for CLI tools maintained by [donutdaniel](https://github.com/donutdaniel).

    This README is generated from the metadata in `Formula/*.rb`.

    ## Install

    ```bash
    brew tap donutdaniel/tap
    brew install donutdaniel/tap/<formula>
    ```

    ## Available Formulae

    | Formula | Description | Platforms |
    | --- | --- | --- |
    #{rows}

    ## Upgrade

    ```bash
    brew update
    brew upgrade
    ```
  MARKDOWN
end

formulae = FORMULA_DIR.glob("*.rb").sort.map { |path| load_formula(path) }
README_PATH.write(render_readme(formulae))
