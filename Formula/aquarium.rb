class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v2.9.0/aquarium.tar.gz"
  sha256 "9fffff51da86eed85fc9203689e125e938d5bdbcad6655120e687aec9f005c79"
  version "2.9.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
