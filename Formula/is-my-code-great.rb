class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.7.1.tar.gz"
  sha256   "2c3cfaf02b1093128dc38e205f497a271dfaa3a17113be77446dff1b2ed9fc91"

  def install
    lib.install Dir["lib/*"]
    bin.install "bin/is-my-code-great"
  end

  test do
    system "#{bin}/is-my-code-great", "--help"
  end
end
