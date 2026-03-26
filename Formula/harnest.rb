class Harnest < Formula
  desc "Composable Claude Code agent team harness"
  homepage "https://github.com/gioperalto/harnest"
  url "https://github.com/gioperalto/harnest/archive/refs/tags/v1.3.2.tar.gz"
  sha256 "790898227896a84679e360f3b4d045e23e240eacc260df8656feff1f86143db7"
  license "MIT"

  def install
    bin.install "bin/harnest"
    (share/"harnest/nest/public").install Dir["nest/public/*"]
    (share/"harnest/nest/internal").install Dir["nest/internal/*"]
    (share/"harnest/nest").install "nest/rubric.yaml" if File.exist?("nest/rubric.yaml")
    (share/"harnest/lib").install Dir["lib/*"]
  end
end
