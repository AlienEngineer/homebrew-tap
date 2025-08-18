class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.tar.gz"
  sha256   "0eb1cd7c706a7be363cc030a695135f1f28f8d43086fba659f976f2b7443725a"

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
