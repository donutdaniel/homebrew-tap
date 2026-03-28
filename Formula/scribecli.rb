class Scribecli < Formula
  desc "Local meeting recording and transcription CLI for macOS"
  homepage "https://github.com/donutdaniel/scribecli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/donutdaniel/scribecli/releases/download/v0.1.1/scribecli-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "124438babddce034ffb99d51dc18243564839cc3c89c9a978c888b75d365e96e"
    end
    on_intel do
      url "https://github.com/donutdaniel/scribecli/releases/download/v0.1.1/scribecli-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "94ef1967fdcc4ca03c6a285db3fbaa3a6c19ff3438833d56acd86828b7009b66"
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
