class Scribecli < Formula
  desc "Local meeting recording and transcription CLI for macOS"
  homepage "https://github.com/donutdaniel/scribecli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/donutdaniel/scribecli/releases/download/v0.1.2/scribecli-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "131c678ecb5914a0d41d1b173373abe624c47c3a179a4b47b15337175313d1e2"
    end
    on_intel do
      url "https://github.com/donutdaniel/scribecli/releases/download/v0.1.2/scribecli-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "20c1b95f30b11105078f33ebb48353bb392adbe4080de8fd3e2c1f08f8ff16d9"
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
