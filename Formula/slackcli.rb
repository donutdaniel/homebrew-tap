class Slackcli < Formula
  desc "A CLI for the Slack Web API"
  homepage "https://github.com/donutdaniel/slackcli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/donutdaniel/slackcli/releases/download/v0.1.0/slackcli-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "bf6215510ff41a23c189e3e48716af01f929bd61c8e31797250e8bee35c0f727"
    end
    on_intel do
      url "https://github.com/donutdaniel/slackcli/releases/download/v0.1.0/slackcli-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "f680e52aea70a939694206556b85982b01fd37b2c012d292497802495aec8495"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/donutdaniel/slackcli/releases/download/v0.1.0/slackcli-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96e385ee3bfa0c80f61f5559431ecac4b787abaf3a75336001173c571f5142f6"
    end
  end

  def install
    bin.install "slackcli"
  end

  test do
    assert_match "slackcli", shell_output("#{bin}/slackcli --version")
  end
end
