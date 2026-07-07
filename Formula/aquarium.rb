class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v2.4.0/aquarium.tar.gz"
  sha256 "a9e2e7e4548cde8e7460773f93e11c02bacdcaf1fba6ec1c780e28be651c9cc9"
  version "2.4.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
