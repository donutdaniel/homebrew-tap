class Slackcli < Formula
  desc "A CLI for the Slack Web API"
  homepage "https://github.com/donutdaniel/slackcli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/donutdaniel/slackcli/releases/download/v0.1.1/slackcli-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "9db9d0cb64c4dd19392e1c3b2df9b35e2a460605feb76a3c09e7f11fb992252a"
    end
    on_intel do
      url "https://github.com/donutdaniel/slackcli/releases/download/v0.1.1/slackcli-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "0a7932c77846529442bb1888f9845b07957a36bac15c33f791279d98676148cb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/donutdaniel/slackcli/releases/download/v0.1.1/slackcli-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c59d03fefddab9fb876044158a427a46a12edcbd11ddb9adda4fb0474cbf6ca1"
    end
  end

  def install
    bin.install "slackcli"
  end

  test do
    assert_match "slackcli", shell_output("#{bin}/slackcli --version")
  end
end
