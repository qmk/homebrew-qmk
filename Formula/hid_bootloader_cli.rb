class HidBootloaderCli < Formula
  desc "LUFA HID Bootloader CLI"
  homepage "https://www.lufa-lib.org"
  url "https://github.com/abcminiuser/lufa/archive/refs/tags/LUFA-210130.tar.gz"
  sha256 "9b56921d59a50099cc6a8026248380a10ff518c8d02b547d6e617f71e6038f57"
  license "GPL-3.0-only"
  revision 3
  head "https://github.com/abcminiuser/lufa.git", branch: "master"

  bottle do
    root_url "https://ghcr.io/v2/qmk/qmk"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "740b3a70f3b3f1d60c55ed4a53b248a166c47c415bf0ff91e48f9dd58ac77def"
    sha256 cellar: :any_skip_relocation, ventura:      "5f10933451f8dbab6c37195c9e0cd3c63affcf9f288f7241a81164c3d8ecb98d"
    sha256 cellar: :any_skip_relocation, monterey:     "7df3f6fa152b8801764cbc6e54bfd980fbec4cd163eea143bc615d3030cd6fa3"
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
