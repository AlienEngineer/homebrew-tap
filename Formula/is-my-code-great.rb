class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.3.0.tar.gz"
  sha256   "a49011ca478553a007842730193227616bd7a4ad6925f51beeb155e088675cb8"

  def install
    lib.install Dir["lib/*"]
    bin.install "bin/is-my-code-great"
  end

  test do
    system "#{bin}/is-my-code-great", "--help"
  end
end
