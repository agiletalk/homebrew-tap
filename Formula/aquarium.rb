class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v3.1.0/aquarium.tar.gz"
  sha256 "760d63606dcec2b56748c68f0c5d8fcb8fbd8fe4743da8a9c84d38e9af3d3e25"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
