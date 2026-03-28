class Scribecli < Formula
  desc "Local meeting recording and transcription CLI for macOS"
  homepage "https://github.com/donutdaniel/scribecli"
  version "0.1.1"
  license "MIT"

  bottle :unneeded

  on_macos do
    on_arm do
      url "https://github.com/donutdaniel/scribecli/releases/download/v0.1.1/scribecli-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "b68be9cf9c1acb54f4119083a0d1703619275893afaf56ad24be86c1376a1293"
    end
    on_intel do
      url "https://github.com/donutdaniel/scribecli/releases/download/v0.1.1/scribecli-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "19a3fa61e4a58d880209e201ed9b6c90e06b5967f2bb2b07a302fc70061242de"
    end
  end

  def install
    bin.install "bin/scribecli"
    (libexec/"scribecli").install "libexec/scribecli/whisper-cli"
  end

  test do
    assert_match "scribecli", shell_output("#{bin}/scribecli --version")
  end
end
