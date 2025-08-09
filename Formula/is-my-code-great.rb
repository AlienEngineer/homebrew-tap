class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.7.4.tar.gz"
  sha256   "05800a8d37b9c71be40f2b09153d9ca22f14e0277d3298fee02a8eca4395d8ff"

  def install
    lib.install Dir["lib/*"]
    bin.install "bin/is-my-code-great"
    man1.install Dir["man/*.1"]
  end

  test do
    system "#{bin}/is-my-code-great", "--help"
  end
end
