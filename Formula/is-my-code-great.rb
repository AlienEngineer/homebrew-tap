class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.10.20.tar.gz"
  sha256   "3ffe1fa38c85af64a177edfb86137a56b8bb0dc327f9325cc7b3b29493608e05"

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
