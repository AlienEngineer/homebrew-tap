class IsMyCodeGreat < Formula
  desc "CLI to analyse Dart test code quality"
  homepage "https://github.com/AlienEngineer/is-my-code-great"
  url      "https://github.com/AlienEngineer/is-my-code-great/archive/v0.2.0.tar.gz"
  sha256   "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"

  def install
    lib.install Dir["lib/*"]
    bin.install "bin/is-my-code-great"
  end

  test do
    system "#{bin}/is-my-code-great", "--help"
  end
end
