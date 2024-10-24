class Mdloader < Formula
  desc "Massdrop Firmware Loader"
  homepage "https://github.com/Massdrop/mdloader"
  url "https://github.com/Massdrop/mdloader/archive/refs/tags/1.0.7.tar.gz"
  sha256 "a3c47ed285aaa94e9a5c00c84a15798e6d90f1bb13db846cc71cad6eb4a2d7c4"
  revision 4
  head "https://github.com/Massdrop/mdloader.git", branch: "master"

  bottle do
    root_url "https://ghcr.io/v2/qmk/qmk"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "03924c1c44a9021b7b468f8aec9b54647aa78ebbb92022f36b617f78b074ee84"
    sha256 cellar: :any_skip_relocation, ventura:      "b4a3feca0ba2e4c55d8081791309d04b1837373fbae729df3eb47b41df8875da"
    sha256 cellar: :any_skip_relocation, monterey:     "d769ca7e71330ceecade0945dc71d640a427960a91c8052fe45a74a326e24e2e"
  end

  def install
    system "make", "prefix=#{prefix}"

    Dir.chdir "build"
    bin.install "mdloader"
  end

  test do
    assert_equal `mdloader --version`.lines.first, "Massdrop Loader 1.07\n"
  end
end
