class Mdloader < Formula
  desc "Massdrop Firmware Loader"
  homepage "https://github.com/Massdrop/mdloader"
  url "https://github.com/Massdrop/mdloader/archive/1.0.7.tar.gz"
  sha256 "a3c47ed285aaa94e9a5c00c84a15798e6d90f1bb13db846cc71cad6eb4a2d7c4"
  head "https://github.com/Massdrop/mdloader"

  bottle do
    root_url "https://github.com/qmk/homebrew-qmk/releases/download/mdloader-1.0.6"
    sha256 cellar: :any_skip_relocation, catalina: "2dd99c4f57edbb53582780ca46ee526f4625098cca3effede9799cdd0a80c07b"
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
