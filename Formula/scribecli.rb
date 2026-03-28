class Scribecli < Formula
  desc "Local meeting recording and transcription CLI for macOS"
  homepage "https://github.com/donutdaniel/scribecli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/donutdaniel/scribecli/releases/download/v0.1.1/scribecli-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "54cb200973721dd349dfe5060b0951614b612601d730511dc8dde851edff3501"
    end
    on_intel do
      url "https://github.com/donutdaniel/scribecli/releases/download/v0.1.1/scribecli-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "59c1fef28f76ee688133eb5b6aa92c3bf0d6e807ebfc571875380d78ddbc600a"
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
