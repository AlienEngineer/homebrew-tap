class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.9.4.tar.gz"
  sha256   "42d9b80698a0dca6a87e24483df8aed21dc263bc73002af72f802d3581d26ffd"

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
