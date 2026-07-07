class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v2.2.0/aquarium.tar.gz"
  sha256 "3819d28037960d5b265fcbb399e35b9ce6502e39416aad8339a14e8a5b4ce71f"
  version "2.2.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
