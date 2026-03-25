class Slackcli < Formula
  desc "A CLI for the Slack Web API"
  homepage "https://github.com/donutdaniel/slackcli"
  url "https://github.com/donutdaniel/slackcli/archive/6e28f66d11e03baf67c1c9747b6ea298eef241b7.tar.gz"
  sha256 "a9ffcb6f1b422801e721a48d95f206a43bb0e9e1652e8f67aad94e1cbda66923"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "slackcli", shell_output("#{bin}/slackcli --version")
  end
end
