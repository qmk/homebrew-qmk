class Mdloader < Formula
  desc "Massdrop Firmware Loader"
  homepage "https://github.com/Massdrop/mdloader"
  url "https://github.com/Massdrop/mdloader/archive/refs/tags/1.0.7.tar.gz"
  sha256 "a3c47ed285aaa94e9a5c00c84a15798e6d90f1bb13db846cc71cad6eb4a2d7c4"
  revision 2
  head "https://github.com/Massdrop/mdloader.git", branch: "master"

  bottle do
    root_url "https://ghcr.io/v2/qmk/qmk"
    sha256 cellar: :any_skip_relocation, ventura:  "d8f755cd96d7517b955674c29d92c7f1dd86446279f2ff2e4e92fa96b466eef6"
    sha256 cellar: :any_skip_relocation, monterey: "2437eac987edae946c5626abc5108fb6b38f4ef9a74005c1a06f54daa21d1761"
    sha256 cellar: :any_skip_relocation, big_sur:  "bb6d00c83467630f2688c0834828bc3b49fdda46e60ef77076014019cb18bb8d"
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
