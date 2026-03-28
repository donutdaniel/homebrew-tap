cask "scribecli" do
  version "0.1.1"

  on_arm do
    sha256 "0b0cce01b637d5268064fb4e52e385f2438a8b280250f78953e819ca0c62d291"
    url "https://github.com/donutdaniel/scribecli/releases/download/v0.1.1/scribecli-v0.1.1-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "268052167abee91498cdf52b37d0269827c6b44310502f8449a593a0091cd068"
    url "https://github.com/donutdaniel/scribecli/releases/download/v0.1.1/scribecli-v0.1.1-x86_64-apple-darwin.tar.gz"
  end

  name "scribecli"
  desc "Local meeting recording and transcription CLI for macOS"
  homepage "https://github.com/donutdaniel/scribecli"

  binary "bin/scribecli"
  binary "libexec/scribecli/whisper-cli", target: "#{HOMEBREW_PREFIX}/libexec/scribecli/whisper-cli"
end
