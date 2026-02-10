class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.11.1.tar.gz"
  sha256   "3930a0ab9e51cd878d0d6188ad96a47341a3d24e81ab1309e0228670a36620a6"

  def install
    lib.install Dir["lib/*"]
    bin.install "bin/is-my-code-great"
    bin.install_symlink "bin/cg"
    man1.install Dir["share/man/man1/*"]
  end

  test do
    bin_path = bin/"is-my-code-great"
    assert_predicate bin_path, :exist?, "Binary not installed"
    assert_predicate bin_path, :executable?, "Binary is not executable"
  end
end
