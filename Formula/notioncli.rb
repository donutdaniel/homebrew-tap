class Notioncli < Formula
  desc "A CLI for the Notion API"
  homepage "https://github.com/donutdaniel/notioncli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/donutdaniel/notioncli/releases/download/v0.1.0/notioncli-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "d57e91562efcb2d41de7f21f8c00de6d817742c21eaee92c0067cd8840404f7f"
    end
    on_intel do
      url "https://github.com/donutdaniel/notioncli/releases/download/v0.1.0/notioncli-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "4a924921b4bede7926a3ca90bc5d08ad0bf2618a8a8acd9c2d9d07c1390e1976"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/donutdaniel/notioncli/releases/download/v0.1.0/notioncli-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd5047b940a8972f12f80dce1ec82e177de4dd93d3bd609fc1ec37e3589c46cf"
    end
  end

  def install
    bin.install "notioncli"
  end

  test do
    assert_match "notioncli", shell_output("#{bin}/notioncli --version")
  end
end
