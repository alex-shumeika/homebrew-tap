class Quickrun < Formula
  desc "Shortcut for frequently used commands"
  homepage "https://github.com/alex-shumeika/quickrun"
  url "https://github.com/alex-shumeika/quickrun/releases/download/0.1.2/quickrun-0.1.2-macos-arm64.tar.gz"
  sha256 "668350ab5644b57a19abcfc42154762e87e3661b79971e7a4b9ad7d04933efa0"
  version "0.1.2"

  def install
    bin.install "quickrun"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quickrun --version")
  end
end
