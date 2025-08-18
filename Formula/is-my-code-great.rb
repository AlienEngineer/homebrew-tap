class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.tar.gz"
  sha256   "010afa5f22d7e5f429e0d72a39334b1ddb9de06c7b352cf73a54d665ff1a8abf"

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
