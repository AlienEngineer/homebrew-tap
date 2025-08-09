class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.7.7.tar.gz"
  sha256   "1dc687c67ea20f84c4646489b7f073e957f96337bd10827ca44cd8a93a245b88"

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
