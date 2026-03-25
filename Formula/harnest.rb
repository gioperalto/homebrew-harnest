class Harnest < Formula
  desc "Composable Claude Code agent team harness"
  homepage "https://github.com/gioperalto/harnest"
  url "https://github.com/gioperalto/harnest/archive/refs/tags/v1.2.5.tar.gz"
  sha256 "3ed0783759cd9e9a39e2f3114459145147f644b0a2a9729355829b57ce3e66fd"
  license "MIT"

  def install
    bin.install "bin/harnest"
    (share/"harnest/nest").install Dir["nest/*"]
    (share/"harnest/lib").install Dir["lib/*"]
  end
end
