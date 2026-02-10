class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.10.37.tar.gz"
  sha256   "91141af770f6de49ee3f52d3343d396d5c2790de09667e1293d4e3f70c4007f6"

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
