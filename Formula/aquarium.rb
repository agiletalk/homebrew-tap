class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v3.0.0/aquarium.tar.gz"
  sha256 "dc6226620bed982d642a1b3b98b751f10ccca5683144f7675aa12900c2d93f5d"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
