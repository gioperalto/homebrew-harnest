class Harnest < Formula
  desc "Composable Claude Code agent team harness"
  homepage "https://github.com/gioperalto/harnest"
  url "https://github.com/gioperalto/harnest/archive/refs/tags/v1.2.7.tar.gz"
  sha256 "25773f6dd851b2f0ec5b8b42b751f9e6b197a706cc904ccddd0cea7e9068ba92"
  license "MIT"

  def install
    bin.install "bin/harnest"
    (share/"harnest/nest/public").install Dir["nest/public/*"]
    (share/"harnest/nest/internal").install Dir["nest/internal/*"]
    (share/"harnest/nest").install "nest/rubric.yaml" if File.exist?("nest/rubric.yaml")
    (share/"harnest/lib").install Dir["lib/*"]
  end
end
