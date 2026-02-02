class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.10.28.tar.gz"
  sha256   "5f021007de8cc84aeb766f8faa5b0e048363ea41ccf3944337458456c0f8c929"

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
