class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v1.8.0/aquarium.tar.gz"
  sha256 "5fe6369130607e898bd993bca93455e3e43cc1bb3f7d01c40cec3bc1ec075989"
  version "1.8.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
