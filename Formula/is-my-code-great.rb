class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.10.0.tar.gz"
  sha256   "06da0b47eb4431d5f249f05329bc6a126683a7bed9e33caff3ac5bfd25866b06"

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
