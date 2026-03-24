class Notioncli < Formula
  desc "A CLI for the Notion API"
  homepage "https://github.com/donutdaniel/notioncli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/donutdaniel/notioncli/releases/download/v0.1.1/notioncli-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "0ae5d89d6ea9eabc402d90f762b4227f6a73e6f74946fccf893f8b325d9a8423"
    end
    on_intel do
      url "https://github.com/donutdaniel/notioncli/releases/download/v0.1.1/notioncli-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "6ba4282d9a2a8e3f4ac339f77ee3aa169c77baae471bf494bcd4987a3216a378"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/donutdaniel/notioncli/releases/download/v0.1.1/notioncli-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "98193dcabedc65e121e1110478609cef507ae1272a30991aaacc91c0e7692554"
    end
  end

  def install
    bin.install "notioncli"
  end

  test do
    assert_match "notioncli", shell_output("#{bin}/notioncli --version")
  end
end
