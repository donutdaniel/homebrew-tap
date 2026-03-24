class Notioncli < Formula
  desc "A CLI for the Notion API"
  homepage "https://github.com/donutdaniel/notioncli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/donutdaniel/notioncli/releases/download/v#{version}/notioncli-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/donutdaniel/notioncli/releases/download/v#{version}/notioncli-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/donutdaniel/notioncli/releases/download/v#{version}/notioncli-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "notioncli"
  end

  test do
    assert_match "notioncli", shell_output("#{bin}/notioncli --version")
  end
end
