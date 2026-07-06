class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v1.1.1/aquarium.tar.gz"
  sha256 "26916e5383db1bb7b158b2b257f70bce8c71b141d8d90c8b14cfc20044688cf7"
  version "1.1.1"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
