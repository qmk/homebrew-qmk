class Mdloader < Formula
  desc "Massdrop Firmware Loader"
  homepage "https://github.com/Massdrop/mdloader"
  url "https://github.com/Massdrop/mdloader/archive/1.0.7.tar.gz"
  sha256 "0d2d679849c8edbe0b67eaf2bdc69a4a0ced07d009008a01d8f9d81fa8a49b51"
  head "https://github.com/Massdrop/mdloader"

  bottle do
    root_url "https://github.com/qmk/homebrew-qmk/releases/download/mdloader-1.0.7"
    sha256 cellar: :any_skip_relocation, catalina: "1e4a86e31b75e50d9a97e26d641f6159181552bfd670c6ee696547a6d32d750f"
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
