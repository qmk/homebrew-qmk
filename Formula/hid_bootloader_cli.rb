class HidBootloaderCli < Formula
  desc "LUFA HID Bootloader CLI"
  homepage "https://www.lufa-lib.org"
  url "https://github.com/abcminiuser/lufa/archive/refs/tags/LUFA-210130.tar.gz"
  sha256 "9b56921d59a50099cc6a8026248380a10ff518c8d02b547d6e617f71e6038f57"
  license "GPL-3.0-only"
  head "https://github.com/abcminiuser/lufa.git"

  bottle do
    root_url "https://github.com/qmk/homebrew-qmk/releases/download/hid_bootloader_cli-210130"
    sha256 cellar: :any_skip_relocation, catalina: "80f4744b2150d84060347dd73cdc90db333f09a39ba16150ba8beb3afbf3642f"
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
