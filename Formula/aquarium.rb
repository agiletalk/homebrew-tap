class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v2.5.0/aquarium.tar.gz"
  sha256 "b1bc8c01509b4354c33fda3291286ce943d1783f7af4ed2c7c30b745d1dca29a"
  version "2.5.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
