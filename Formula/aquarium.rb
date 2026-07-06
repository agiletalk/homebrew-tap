class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v1.7.0/aquarium.tar.gz"
  sha256 "7ce0254b4e83a5e5b630c83aed5c5c106fac099a31ba7e60a0014024642e9660"
  version "1.7.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
