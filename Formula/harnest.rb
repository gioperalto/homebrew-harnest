class Harnest < Formula
  desc "Composable Claude Code agent team harness"
  homepage "https://github.com/gioperalto/harnest"
  url "https://github.com/gioperalto/harnest/archive/refs/tags/v1.1.15.tar.gz"
  sha256 "b495c352d9d9339bab3e42fa98cdfd0fff1187e5dfe399aaa6b7fc78ad0be9dc"
  license "MIT"

  def install
    bin.install "bin/harnest"
    (share/"harnest/nest").install Dir["nest/*"]
    (share/"harnest/lib").install Dir["lib/*"]
  end
end
