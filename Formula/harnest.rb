class Harnest < Formula
  desc "Composable Claude Code agent team harness"
  homepage "https://github.com/gioperalto/harnest"
  url "https://github.com/gioperalto/harnest/archive/refs/tags/v1.2.8.tar.gz"
  sha256 "3607db24a64f59fbdec6415360a85b7d09bbfc2c0a8e624c32c23064527fb022"
  license "MIT"

  def install
    bin.install "bin/harnest"
    (share/"harnest/nest/public").install Dir["nest/public/*"]
    (share/"harnest/nest/internal").install Dir["nest/internal/*"]
    (share/"harnest/nest").install "nest/rubric.yaml" if File.exist?("nest/rubric.yaml")
    (share/"harnest/lib").install Dir["lib/*"]
  end
end
