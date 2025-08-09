class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.8.1.tar.gz"
  sha256   "758b40b30deac7eaa7f99b93ff92fe7d5ff67a168bc0f5e76fe84e15dcb8950f"

  def install
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
