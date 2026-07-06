class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v1.1.0/aquarium.tar.gz"
  sha256 "d1d7e459d71358d232c59a84117401b84b9e5167fd779fb3b6a36683c0c6098d"
  version "1.1.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
