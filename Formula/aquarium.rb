class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v1.5.0/aquarium.tar.gz"
  sha256 "59138522c9061b307422bb91d5a1a05ffb28fa807d3bb9aaf7cbc00fe7037564"
  version "1.5.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
