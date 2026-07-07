class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v2.3.0/aquarium.tar.gz"
  sha256 "60fa30bc9e826f2784e1c0be27715f71062dbdd5fc116e20858e11f5aa1876ce"
  version "2.3.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
