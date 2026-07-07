class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v2.2.1/aquarium.tar.gz"
  sha256 "3276616631f9f7a90b3262efcaba1af9f5c5e4259312d754038b075200588734"
  version "2.2.1"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
