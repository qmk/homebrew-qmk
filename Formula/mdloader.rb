class Mdloader < Formula
  desc "Massdrop Firmware Loader"
  homepage "https://github.com/Massdrop/mdloader"
  url "https://github.com/Massdrop/mdloader/archive/1.0.7.tar.gz"
  sha256 "a3c47ed285aaa94e9a5c00c84a15798e6d90f1bb13db846cc71cad6eb4a2d7c4"
  revision 1
  head "https://github.com/Massdrop/mdloader.git", branch: "master"

  bottle do
    root_url "https://github.com/qmk/homebrew-qmk/releases/download/mdloader-1.0.7_1"
    sha256 cellar: :any_skip_relocation, big_sur: "b706d800f4417a382a24b98f65facec5b3a9df277ae3e3fdade0892f3385c457"
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
