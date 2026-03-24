class Notioncli < Formula
  desc "A CLI for the Notion API"
  homepage "https://github.com/donutdaniel/notioncli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/donutdaniel/notioncli/releases/download/v0.1.1/notioncli-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "70a85dd05b5e2925a12aa3028522999903ad86c0aa0d8ded17265eaf9ffae579"
    end
    on_intel do
      url "https://github.com/donutdaniel/notioncli/releases/download/v0.1.1/notioncli-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "2b77b0692fae2912a1f1182a062476c4033982f4ed7d75a09729c0f3487439a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/donutdaniel/notioncli/releases/download/v0.1.1/notioncli-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac73de444d41bf4f8a4d5b8f9e969d58fdda11a490f9c53b55fc51145e800226"
    end
  end

  def install
    bin.install "notioncli"
  end

  test do
    assert_match "notioncli", shell_output("#{bin}/notioncli --version")
  end
end
