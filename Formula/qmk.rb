class Qmk < Formula
  include Language::Python::Virtualenv

  desc "Quantum Mechanical Keyboard (QMK) Firmware"
  homepage "https://docs.qmk.fm/"
  url "https://files.pythonhosted.org/packages/3b/76/633222ed56333f0f6c82c29cb4afaa1e3e21b938445a34337978263d1e38/qmk-1.1.8.tar.gz"
  sha256 "0b426b6bf20aeb5b67806b2e127303e26c9245cfe265581d6046cc5edc29059d"
  license "MIT"

  bottle do
    root_url "https://ghcr.io/v2/qmk/qmk"
    sha256 cellar: :any, arm64_sonoma: "9a3503d5495e45d18e944f11e6c26326e725161bff4e8320aa8ff2bdbde5b61e"
    sha256 cellar: :any, ventura:      "f8bb9c187b36cd48eb33417aed30d612b9f71f5ae8fd599845a789f98c78cc52"
  end

  depends_on "rust" => :build

  depends_on "avrdude"
  depends_on "bootloadhid"
  depends_on "clang-format"
  depends_on "dfu-programmer"
  depends_on "dfu-util"
  depends_on "hid_bootloader_cli"
  depends_on "hidapi"
  depends_on "libusb"
  depends_on "make"
  depends_on "mdloader"
  depends_on "osx-cross/arm/arm-none-eabi-gcc@8"
  depends_on "osx-cross/avr/avr-gcc@8"
  depends_on "pillow"
  depends_on "python"
  depends_on "teensy_loader_cli"

  on_arm do
    depends_on "pkg-config" => :build
  end

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/16/0f/861e168fc813c56a78b35f3c30d91c6757d1fd185af1110f1aec784b35d0/argcomplete-3.6.2.tar.gz"
    sha256 "d0519b1bc867f5f4f4713c41ad0aba73a4a5f007449716b16f385f2166dc6adf"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/5a/b0/1367933a8532ee6ff8d63537de4f1177af4bff9f3e829baf7331f595bb24/attrs-25.3.0.tar.gz"
    sha256 "75d7cefc7fb576747b2c81b4442d4d4a1ce0900973527c011d1030fd3bf4af1b"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "dotty-dict" do
    url "https://files.pythonhosted.org/packages/6a/ab/88d67f02024700b48cd8232579ad1316aa9df2272c63049c27cc094229d6/dotty_dict-1.3.1.tar.gz"
    sha256 "4b016e03b8ae265539757a53eba24b9bfda506fb94fbce0bee843c6f05541a15"
  end

  resource "halo" do
    url "https://files.pythonhosted.org/packages/ee/48/d53580d30b1fabf25d0d1fcc3f5b26d08d2ac75a1890ff6d262f9f027436/halo-0.0.31.tar.gz"
    sha256 "7b67a3521ee91d53b7152d4ee3452811e1d2a6321975137762eb3d70063cc9d6"
  end

  resource "hid" do
    url "https://files.pythonhosted.org/packages/d3/9c/6f33de7dbf6f9054ebf312c01b3440040526fb133f3e7de2b5fe81184163/hid-1.0.7.tar.gz"
    sha256 "3f809e292ab52c4435ad1442c8ef205be4c9ca4eeb80fb47c7d98e0c75527b2a"
  end

  resource "hjson" do
    url "https://files.pythonhosted.org/packages/82/e5/0b56d723a76ca67abadbf7fb71609fb0ea7e6926e94fcca6c65a85b36a0e/hjson-3.1.0.tar.gz"
    sha256 "55af475a27cf83a7969c808399d7bccdec8fb836a07ddbd574587593b9cdcf75"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/bf/d3/1cf5326b923a53515d8f3a2cd442e6d7e94fcc444716e879ea70a0ce3177/jsonschema-4.24.0.tar.gz"
    sha256 "0b4e8069eb12aedfa881333004bccaec24ecef5a8a6a4b6df142b2cc9599d196"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/bf/ce/46fbd9c8119cfc3581ee5643ea49464d168028cfb5caff5fc0596d0cf914/jsonschema_specifications-2025.4.1.tar.gz"
    sha256 "630159c9f4dbea161a6a2205c3011cc4f18ff381b189fff48bb39b9bf26ae608"
  end

  resource "log-symbols" do
    url "https://files.pythonhosted.org/packages/45/87/e86645d758a4401c8c81914b6a88470634d1785c9ad09823fa4a1bd89250/log_symbols-0.0.14.tar.gz"
    sha256 "cf0bbc6fe1a8e53f0d174a716bc625c4f87043cc21eb55dd8a740cfe22680556"
  end

  resource "milc" do
    url "https://files.pythonhosted.org/packages/f1/85/36cf4fd4cbcc25c6ee238056342decb800b6928080fe20b35d87f4c498ad/milc-1.9.1.tar.gz"
    sha256 "d89c9fa85984adca2e49b8f4a3a77bd649df6553c92583be38f55e9a9343a65e"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/af/cb/bb5c01fcd2a69335b86c22142b2bccfc3464087efb7fd382eee5ffc7fdf7/pillow-11.2.1.tar.gz"
    sha256 "a64dd61998416367b7ef979b73d3a85853ba9bec4c2925f74e588879a58716b6"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/fe/8b/3c73abc9c759ecd3f1f7ceff6685840859e8070c4d947c93fae71f6a0bf2/platformdirs-4.3.8.tar.gz"
    sha256 "3d512d96e16bcb959a814c9f348431070822a6496326a4be0911c40b5a74c2bc"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/7c/2d/c3338d48ea6cc0feb8446d8e6937e1408088a72a39937982cc6111d17f84/pygments-2.19.1.tar.gz"
    sha256 "61c16d2a8576dc0649d9f39e089b5f02bcd27fba10d8fb4dcc28173f7a45151f"
  end

  resource "pyserial" do
    url "https://files.pythonhosted.org/packages/1e/7d/ae3f0a63f41e4d2f6cb66a5b57197850f919f59e558159a4dd3a818f5082/pyserial-3.5.tar.gz"
    sha256 "3c77e014170dfffbd816e6ffc205e9842efb10be9f58ec16d3e8675b4925cddb"
  end

  resource "pyusb" do
    url "https://files.pythonhosted.org/packages/00/6b/ce3727395e52b7b76dfcf0c665e37d223b680b9becc60710d4bc08b7b7cb/pyusb-1.3.1.tar.gz"
    sha256 "3af070b607467c1c164f49d5b0caabe8ac78dbed9298d703a8dbf9df4052d17e"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/2f/db/98b5c277be99dd18bfd91dd04e1b759cad18d1a338188c936e92f921c7e2/referencing-0.36.2.tar.gz"
    sha256 "df2e89862cd09deabbdba16944cc3f10feb6b3e6f18e902f7cc25609a34775aa"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/8c/a6/60184b7fc00dd3ca80ac635dd5b8577d444c57e8e8742cecabfacb829921/rpds_py-0.25.1.tar.gz"
    sha256 "8960b6dac09b62dac26e75d7e2c4a22efb835d827a7278c34f72b2b84fa160e3"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "spinners" do
    url "https://files.pythonhosted.org/packages/d3/91/bb331f0a43e04d950a710f402a0986a54147a35818df0e1658551c8d12e1/spinners-0.0.24.tar.gz"
    sha256 "1eb6aeb4781d72ab42ed8a01dcf20f3002bf50740d7154d12fb8c9769bf9e27f"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/ca/6c/3d75c196ac07ac8749600b60b03f4f6094d54e132c4d94ebac6ee0e0add0/termcolor-3.1.0.tar.gz"
    sha256 "6a6dd7fbee581909eeec6a756cff1d7f7c376063b14e4a298dc4980309e55970"
  end

  resource "types-colorama" do
    url "https://files.pythonhosted.org/packages/59/73/0fb0b9fe4964b45b2a06ed41b60c352752626db46aa0fb70a49a9e283a75/types-colorama-0.4.15.20240311.tar.gz"
    sha256 "a28e7f98d17d2b14fb9565d32388e419f4108f557a7d939a66319969b2b99c7a"
  end

  def install
    virtualenv_install_with_resources
  end

  def qmk_home_set?
    `#{HOMEBREW_PREFIX}/bin/qmk config`.include? "user.qmk_home"
  end

  def caveats
    if (HOMEBREW_PREFIX/"bin/qmk").exist? && !qmk_home_set?
      <<~EOS
        The QMK CLI has been installed but your QMK home is not set.

        This may be your first install. Please run `qmk setup` now to find or clone
        the repository to your home directory.

        If you have forked qmk/qmk_firmware on GitHub or are using a third-party fork,
        you can clone it instead like so:

            qmk setup <username>/qmk_firmware

        To set a specific QMK home (the directory the repository is cloned into),
        use the -H flag:

            qmk setup -H /your/preferred/path
      EOS
    end
  end

  test do
    system bin/"qmk", "setup", "-n"
  end
end
