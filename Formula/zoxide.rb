class Zoxide < Formula
  desc "Faster way to navigate your filesystem"
  homepage "https://github.com/ajeetdsouza/zoxide"
  url "https://github.com/ajeetdsouza/zoxide/archive/v0.4.1.tar.gz"
  sha256 "bf3bed2d384e2f137c1d4cf56a97fb7e925abd69823ce41f1552c76e183466c8"

  depends_on "git" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_equal "/", shell_output("#{bin}/zoxide query /").strip
  end
end
