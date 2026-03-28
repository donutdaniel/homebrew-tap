cask "scribecli" do
  version "0.1.1"

  on_arm do
    sha256 "79843c548d558dbcd0900ee13a855e5144b0247819517079f91b7ce169079e4a"
    url "https://github.com/donutdaniel/scribecli/releases/download/v0.1.1/scribecli-v0.1.1-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "fd97d83e98b63aa2c7cfcffe5556841782fb81b9f7ea320264ba0f1b39a33317"
    url "https://github.com/donutdaniel/scribecli/releases/download/v0.1.1/scribecli-v0.1.1-x86_64-apple-darwin.tar.gz"
  end

  name "scribecli"
  desc "Local meeting recording and transcription CLI for macOS"
  homepage "https://github.com/donutdaniel/scribecli"

  binary "bin/scribecli"
  binary "libexec/scribecli/whisper-cli", target: "#{HOMEBREW_PREFIX}/libexec/scribecli/whisper-cli"
end
