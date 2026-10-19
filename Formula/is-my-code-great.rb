class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.11.9.tar.gz"
  sha256   "b3e15f76cf029413deaae1c72fb5745465795a77f7c883802a999fd6a8f7d88a"

  def install
    lib.install Dir["lib/*"]
    bin.install "bin/is-my-code-great"
    bin.install_symlink "bin/cg"
    man1.install Dir["share/man/man1/*"]
  end

  test do
    bin_path = bin/"is-my-code-great"
    assert_predicate bin_path, :exist?, "Binary not installed"
    assert_predicate bin_path, :executable?, "Binary is not executable"
  end
end
