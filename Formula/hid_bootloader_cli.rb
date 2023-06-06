class HidBootloaderCli < Formula
  desc "LUFA HID Bootloader CLI"
  homepage "https://www.lufa-lib.org"
  url "https://github.com/abcminiuser/lufa/archive/refs/tags/LUFA-210130.tar.gz"
  sha256 "9b56921d59a50099cc6a8026248380a10ff518c8d02b547d6e617f71e6038f57"
  license "GPL-3.0-only"
  revision 2
  head "https://github.com/abcminiuser/lufa.git", branch: "master"

  bottle do
    root_url "https://github.com/qmk/homebrew-qmk/releases/download/hid_bootloader_cli-210130_1"
    sha256 cellar: :any_skip_relocation, big_sur: "e7ccd3111a45de86e18f1e8865160ea86f20201951340835c04318287324b989"
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
