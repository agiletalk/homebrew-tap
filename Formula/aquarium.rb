class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v1.3.0/aquarium.tar.gz"
  sha256 "a915031739e3cfb04da6911d74cd5836db94627df8261faee11c6a64304a2849"
  version "1.3.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
