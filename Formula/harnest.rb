class Harnest < Formula
  desc "Composable Claude Code agent team harness"
  homepage "https://github.com/gioperalto/harnest"
  url "https://github.com/gioperalto/harnest/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "313710d7a9912128d778ef4dc5ccaa93d30840501d147c80663636315b0200f2"
  license "MIT"

  def install
    bin.install "bin/harnest"
    (share/"harnest/nest/public").install Dir["nest/public/*"]
    (share/"harnest/nest/internal").install Dir["nest/internal/*"]
    (share/"harnest/nest").install "nest/rubric.yaml" if File.exist?("nest/rubric.yaml")
    (share/"harnest/lib").install Dir["lib/*"]
  end
end
