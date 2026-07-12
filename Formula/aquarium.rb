class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v2.10.0/aquarium.tar.gz"
  sha256 "fba93d9e7324ab853325c50a8304ebbfde6fec12ddaad66a2e93e05db45abb9b"
  version "2.10.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
