class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.tar.gz"
  sha256   "07c3f75f77f658504319868631db937ca77fbe44a7628d8d52ec7b13dee264ea"

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
