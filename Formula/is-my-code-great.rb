class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/alienengineer/is-my-code-great"
  url      "https://github.com/alienengineer/is-my-code-great/archive/v0.5.6.tar.gz"
  sha256   "7b0bb2cd22307e42d5db156ddcfcf145cf4c978cc6aeebcc99a99dcfc8deb43f"}"

  def install
    lib.install Dir["lib/*"]
    bin.install "bin/is-my-code-great"
  end

  test do
    system "#{bin}/is-my-code-great", "--help"
  end
end
