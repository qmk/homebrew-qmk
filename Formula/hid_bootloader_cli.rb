class HidBootloaderCli < Formula
  desc "LUFA HID Bootloader CLI"
  homepage "https://www.lufa-lib.org"
  url "https://github.com/abcminiuser/lufa/archive/refs/tags/LUFA-210130.tar.gz"
  sha256 "9b56921d59a50099cc6a8026248380a10ff518c8d02b547d6e617f71e6038f57"
  license "GPL-3.0-only"
  revision 4
  head "https://github.com/abcminiuser/lufa.git", branch: "master"

  bottle do
    root_url "https://ghcr.io/v2/qmk/qmk"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e6dba52e874d718b6c2ebd876cc200bfb95305831cfd6a8a6155eb0e05670e22"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "0d0749ff8bd4e1833ced1d17e87e089229345b148266f157d6f80ec100c58398"
    sha256 cellar: :any_skip_relocation, ventura:       "e72d8880a479e2bb497e0691a80818b24c20dd13e0a6d53549e1b722bbfae740"
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
