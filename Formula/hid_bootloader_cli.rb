class HidBootloaderCli < Formula
  desc "LUFA HID Bootloader CLI"
  homepage "https://www.lufa-lib.org"
  url "https://github.com/abcminiuser/lufa/archive/refs/tags/LUFA-210130.tar.gz"
  sha256 "9b56921d59a50099cc6a8026248380a10ff518c8d02b547d6e617f71e6038f57"
  license "GPL-3.0-only"
  revision 2
  head "https://github.com/abcminiuser/lufa.git", branch: "master"

  bottle do
    root_url "https://ghcr.io/v2/qmk/qmk"
    sha256 cellar: :any_skip_relocation, ventura:  "2f108024b5e8458897a0e3b112c586c81712c3405fbf7d7390a61d139d1905a3"
    sha256 cellar: :any_skip_relocation, monterey: "e72cb47d29ac303fee25612e175f1a43d55fe9f07e35509d9d16272a604f21f0"
    sha256 cellar: :any_skip_relocation, big_sur:  "910a5f103c5cd1fa0b9b57b97f2fb4431a5008ab394ca1b0a8864f96c8701e90"
  end

  def install
    chdir "Bootloaders/HID/HostLoaderApp" do
      ENV["OS"] = "MACOSX"
      ENV["SDK"] = MacOS.sdk_path || "/"

      system "make"
      bin.install "hid_bootloader_cli"
    end
  end

  test do
    output = shell_output("#{bin}/hid_bootloader_cli 2>&1", 1)
    assert_match "Filename must be specified", output
  end
end
