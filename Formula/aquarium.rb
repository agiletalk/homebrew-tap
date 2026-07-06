class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v1.0.0/aquarium.tar.gz"
  sha256 "ff6d29a7dc41b6ec7b16c6c082d62522fb688a294c02b219b83a3c8c5de6ee42"
  version "1.0.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
