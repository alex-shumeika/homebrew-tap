class Quickrun < Formula
  desc "Shortcut for frequently used commands"
  homepage "https://github.com/alex-shumeika/quickrun"
  url "https://github.com/alex-shumeika/quickrun.git", tag: "0.1.1"
  version "0.1.1"

  depends_on "xcode": [:build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quickrun --version")
  end
end