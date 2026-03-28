cask "scribecli" do
  version "0.1.1"
  license "MIT"

  on_arm do
    sha256 "c3e74a76a35525e5e31662f8a91f2aa56a043a9d9af03d7320193a560df4a1f1"
    url "https://github.com/donutdaniel/scribecli/releases/download/v0.1.1/scribecli-v0.1.1-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "432cc030c8179c1b4d35ac161954594b9b352b9dcbc9e0d26901e3729300bc23"
    url "https://github.com/donutdaniel/scribecli/releases/download/v0.1.1/scribecli-v0.1.1-x86_64-apple-darwin.tar.gz"
  end

  name "scribecli"
  desc "Local meeting recording and transcription CLI for macOS"
  homepage "https://github.com/donutdaniel/scribecli"

  binary "bin/scribecli"
  binary "libexec/scribecli/whisper-cli", target: "#{HOMEBREW_PREFIX}/libexec/scribecli/whisper-cli"
end
