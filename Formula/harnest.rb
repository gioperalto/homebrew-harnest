class Harnest < Formula
  desc "Composable Claude Code agent team harness"
  homepage "https://github.com/gioperalto/harnest"
  url "https://github.com/gioperalto/harnest/archive/refs/tags/v1.2.2.tar.gz"
  sha256 "975efdbe1e25f6de630ea22e383eec3d50ee94a9f9f78fe941b481ddcf78e819"
  license "MIT"

  def install
    bin.install "bin/harnest"
    (share/"harnest/nest").install Dir["nest/*"]
    (share/"harnest/lib").install Dir["lib/*"]
  end
end
