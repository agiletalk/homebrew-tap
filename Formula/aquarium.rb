class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v2.7.0/aquarium.tar.gz"
  sha256 "879b24d0d45059114ce1908e9b0c0fd436f1a00b76c92ae2cc15b598f6127ef7"
  version "2.7.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
