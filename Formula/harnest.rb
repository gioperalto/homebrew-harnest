class Harnest < Formula
  desc "Composable Claude Code agent team harness"
  homepage "https://github.com/gioperalto/harnest"
  url "https://github.com/gioperalto/harnest/archive/refs/tags/v1.2.6.tar.gz"
  sha256 "bdd6820ae9b43ea76537e67472982dfb055c4844d4056147030b5c1f7c816db4"
  license "MIT"

  def install
    bin.install "bin/harnest"
    (share/"harnest/nest/public").install Dir["nest/public/*"]
    (share/"harnest/nest/internal").install Dir["nest/internal/*"]
    (share/"harnest/nest").install "nest/rubric.yaml" if File.exist?("nest/rubric.yaml")
    (share/"harnest/lib").install Dir["lib/*"]
  end
end
