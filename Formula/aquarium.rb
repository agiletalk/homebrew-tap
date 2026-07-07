class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v2.1.0/aquarium.tar.gz"
  sha256 "ead42d61c553a95a1c9118c9875c9f21dfdec5fc067d85bf2ccb50de13329c8e"
  version "2.1.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
