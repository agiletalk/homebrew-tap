class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v2.6.0/aquarium.tar.gz"
  sha256 "abb96eff3730042892945785217cb07c6794273d52153b1d3eb78f18d668d2dc"
  version "2.6.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
