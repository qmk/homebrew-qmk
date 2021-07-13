class Mdloader < Formula
  desc "Massdrop Firmware Loader"
  homepage "https://github.com/Massdrop/mdloader"
  url "https://github.com/Massdrop/mdloader/archive/1.0.5.tar.gz"
  sha256 "2b2e88e2d66165f2160a0673dcacd94dbcb4f96c855fc0b4923ae569cd8f9e34"
  head "https://github.com/Massdrop/mdloader"

  # Search for applet in pkgshare, then cwd
  patch do
    url "https://raw.githubusercontent.com/qmk/homebrew-qmk/e0aec49182abab878b444a8321c6b765af60d6df/Patch/mdloader-applet-path.patch"
    sha256 "0010e866d4f28db036efbe9c9a13c91b7d0ffb1451f890d066666221e0fec42c"
  end

  def install
    system "make", "prefix=#{prefix}"

    Dir.chdir "build"
    bin.install "mdloader"
    pkgshare.install Dir.glob("applet-*.bin")
  end

  test do
    assert_equal `mdloader --version`.lines.first, "Massdrop Loader 1.05\n"
  end
end
