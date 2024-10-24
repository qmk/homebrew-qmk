class Mdloader < Formula
  desc "Massdrop Firmware Loader"
  homepage "https://github.com/Massdrop/mdloader"
  url "https://github.com/Massdrop/mdloader/archive/refs/tags/1.0.7.tar.gz"
  sha256 "a3c47ed285aaa94e9a5c00c84a15798e6d90f1bb13db846cc71cad6eb4a2d7c4"
  revision 4
  head "https://github.com/Massdrop/mdloader.git", branch: "master"

  bottle do
    root_url "https://ghcr.io/v2/qmk/qmk"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "48e4f992435b4c0b1650757da71f3833028647b5c8a5e0fab645c7abd4674184"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "a1a444177362de9263c2fdde57f8939d5fe1566d4372b5066d47c670a36cd90c"
    sha256 cellar: :any_skip_relocation, ventura:       "2d583d0b049629045909ee41b651b735fef650d5088c284f05c1d843b4c68888"
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
