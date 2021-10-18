class Mdloader < Formula
  desc "Massdrop Firmware Loader"
  homepage "https://github.com/Massdrop/mdloader"
  url "https://github.com/Massdrop/mdloader/archive/1.0.6.tar.gz"
  sha256 "1663e1e1f67b48e5d16802587c603092b43aab37020112931a39d6fc65afe94e"
  head "https://github.com/Massdrop/mdloader"

  bottle do
    root_url "https://github.com/qmk/homebrew-qmk/releases/download/mdloader-1.0.5"
    rebuild 1
    sha256 catalina: "ea59966f9a916b3f8eb468e38dc070b19fea0bb5130e85fd7abf89ffd98d6139"
  end

  def install
    system "make", "prefix=#{prefix}"

    Dir.chdir "build"
    bin.install "mdloader"
  end

  test do
    assert_equal `mdloader --version`.lines.first, "Massdrop Loader 1.06\n"
  end
end
