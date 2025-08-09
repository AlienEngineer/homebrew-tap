class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.7.6.tar.gz"
  sha256   "aa01b5d239c76e39064307bd0ecfd8c7d4c92df4da883240416169eb696e4f17"

  def install
    chmod 0755, "bin/is-my-code-great"
    lib.install Dir["lib/*"]
    bin.install "bin/is-my-code-great"
    man1.install Dir["man/*.1"]
  end

  test do
    bin_path = bin/"is-my-code-great"
    assert_predicate bin_path, :exist?, "Binary not installed"
    assert_predicate bin_path, :executable?, "Binary is not executable"
  end
end
