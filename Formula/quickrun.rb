class Quickrun < Formula
  desc "Shortcut for frequently used commands"
  homepage "https://github.com/alex-shumeika/quickrun"
  url "https://github.com/alex-shumeika/quickrun/archive/refs/tags/0.1.1.tar.gz"
  sha256 "78d4ebf8d20a4d65f79f10f171c742873c0153089eb611623bdc2975c09b7271"
  version "0.1.1"

  depends_on "xcode": [:build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quickrun --version")
  end
end
