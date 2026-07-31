class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v2.12.1/aquarium.tar.gz"
  sha256 "832d24feef7a087c6520275722dbe3c4a747f9aa8d1b252ca417f09486db292c"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
