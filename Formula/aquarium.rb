class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v2.11.0/aquarium.tar.gz"
  sha256 "4f2838eba5d592e935500eb8a1cba31d106e677a050ae32544465fe74861aee3"
  version "2.11.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
