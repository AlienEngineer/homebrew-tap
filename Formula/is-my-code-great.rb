class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.10.16.tar.gz"
  sha256   "a76d442e833d14536a11fa4d98fe275276c4fe2922b2d6ac4e16e32db76d27af"

  def install
    lib.install Dir["lib/*"]
    bin.install "bin/is-my-code-great"
    man1.install Dir["share/man/man1/*"]
  end

  test do
    bin_path = bin/"is-my-code-great"
    assert_predicate bin_path, :exist?, "Binary not installed"
    assert_predicate bin_path, :executable?, "Binary is not executable"
  end
end
