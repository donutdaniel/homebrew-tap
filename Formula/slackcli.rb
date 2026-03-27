class Slackcli < Formula
  desc "A CLI for the Slack Web API"
  homepage "https://github.com/donutdaniel/slackcli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/donutdaniel/slackcli/releases/download/v0.1.1/slackcli-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "ef007a0667bdf7ca7a55b0d0c0bc32956934661896abcd31253d6ad738188593"
    end
    on_intel do
      url "https://github.com/donutdaniel/slackcli/releases/download/v0.1.1/slackcli-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "38b764ac0f14a65aec2283fbb092380840409756451696bbe8380421b25d02b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/donutdaniel/slackcli/releases/download/v0.1.1/slackcli-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e5fb9d08cbffa02e760c06b1fd5e37aa04f2bfa35379d64c3063282780432d3"
    end
  end

  def install
    bin.install "slackcli"
  end

  test do
    assert_match "slackcli", shell_output("#{bin}/slackcli --version")
  end
end
