class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.10.27.tar.gz"
  sha256   "b8043ea31a02c64d7008de53f0d831089f7ee556082e5bf8d0096164d8251838"

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
