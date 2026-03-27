class Scribecli < Formula
  desc "Local meeting recording and transcription CLI for macOS"
  homepage "https://github.com/donutdaniel/scribecli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/donutdaniel/scribecli/releases/download/v0.1.0/scribecli-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "b0ffc4eaaa00c618c7854c0c9254db4cb5c4057fe8e26d5938b794e3f550c0df"
    end
    on_intel do
      url "https://github.com/donutdaniel/scribecli/releases/download/v0.1.0/scribecli-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "f9501d096953814e3ca67a6f6c03d7fa232406ea46073a987facd12bb089a224"
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
