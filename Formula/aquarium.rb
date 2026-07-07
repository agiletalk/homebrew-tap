class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v2.0.0/aquarium.tar.gz"
  sha256 "1d24b2ad391f774ee38678f82ddad597a6af3f9128265d635342e8f70fda36d9"
  version "2.0.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
