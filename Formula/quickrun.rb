class Quickrun < Formula
  desc "Shortcut for frequently used commands"
  homepage "https://github.com/alex-shumeika/quickrun"
  url "https://github.com/alex-shumeika/quickrun/releases/download/0.1.1/quickrun-0.1.1-macos-arm64.tar.gz"
  sha256 "e8ea2b7b11111917ffb34471c94ac6ffad7ab581011cd603d1091f82ef476592"
  version "0.1.1"

  def install
    bin.install "quickrun"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quickrun --version")
  end
end
