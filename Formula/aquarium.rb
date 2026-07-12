class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v2.8.0/aquarium.tar.gz"
  sha256 "39e27b4f1b087de04583dd80b1d79d82c6e4dfce9460b678c207318dd3cc41cc"
  version "2.8.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
