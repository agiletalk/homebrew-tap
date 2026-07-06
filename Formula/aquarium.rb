class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v1.2.0/aquarium.tar.gz"
  sha256 "043857e424c379cb260b20398ce684f5f3051a6a22848e1d1fcb4b2d466bd862"
  version "1.2.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
