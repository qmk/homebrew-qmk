class Qmk < Formula
  include Language::Python::Virtualenv

  desc "Quantum Mechanical Keyboard (QMK) Firmware"
  homepage "https://docs.qmk.fm/"
  url "https://files.pythonhosted.org/packages/64/20/cec7ce9b7c05307209542427f417d005f082771596ab0f628f6a888b8aee/qmk-1.1.5.tar.gz"
  sha256 "2efe3c752230c6ba24b8719c3b6e85a5644bf8f7d0dd237757eda9b7b7e60b11"
  license "MIT"
  revision 1

  bottle do
    root_url "https://ghcr.io/v2/qmk/qmk"
    sha256 cellar: :any, arm64_sonoma: "4e2bf24080081be3cedeec6cb11363b046dd3a0c7cd30a4d6827af92d55b0435"
    sha256 cellar: :any, ventura:      "d8528ca8923ebeda20a261c4cf28d6ed5140af59eed01f73f8733dd4b5ae0ba3"
    sha256 cellar: :any, monterey:     "0f82bed8175e6c544abf5bbaabe57d3a06f9b0ff2f04ef203a584c2f288d96b8"
  end

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

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/d7/d8/05696357e0311f5b5c316d7b95f46c669dd9c15aaeecbb48c7d0aeb88c40/appdirs-1.4.4.tar.gz"
    sha256 "7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41"
  end

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/f0/a2/ce706abe166457d5ef68fac3ffa6cf0f93580755b7d5f883c456e94fab7b/argcomplete-3.2.2.tar.gz"
    sha256 "f3e49e8ea59b4026ee29548e24488af46e30c9de57d48638e24f54a1ea1000a2"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/e3/fc/f800d51204003fa8ae392c4e8278f256206e7a919b708eef054f5f4b650d/attrs-23.2.0.tar.gz"
    sha256 "935dc3b529c262f6cf76e50877d35a4bd3c1de194fd41f47a2b7ae8f19971f30"
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
    url "https://files.pythonhosted.org/packages/50/b8/5f470948262b6cdda8e1b2382b19f67c57eacda1e07a14322807b911e0ce/hid-1.0.6.tar.gz"
    sha256 "48d764d7ae9746ba123b96dbf457893ca80268b7791c4b1d2e051310eeb83860"
  end

  resource "hjson" do
    url "https://files.pythonhosted.org/packages/82/e5/0b56d723a76ca67abadbf7fb71609fb0ea7e6926e94fcca6c65a85b36a0e/hjson-3.1.0.tar.gz"
    sha256 "55af475a27cf83a7969c808399d7bccdec8fb836a07ddbd574587593b9cdcf75"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/36/3d/ca032d5ac064dff543aa13c984737795ac81abc9fb130cd2fcff17cfabc7/jsonschema-4.17.3.tar.gz"
    sha256 "0f864437ab8b6076ba6707453ef8f98a6a0d512a80e93f8abdb676f737ecb60d"
  end

  resource "log-symbols" do
    url "https://files.pythonhosted.org/packages/45/87/e86645d758a4401c8c81914b6a88470634d1785c9ad09823fa4a1bd89250/log_symbols-0.0.14.tar.gz"
    sha256 "cf0bbc6fe1a8e53f0d174a716bc625c4f87043cc21eb55dd8a740cfe22680556"
  end

  resource "milc" do
    url "https://files.pythonhosted.org/packages/3c/7f/f13f3cbdbc0284440cee8a3a4a0aeccde2f99c51f6c1f81f3a5bc033f11e/milc-1.8.0.tar.gz"
    sha256 "cabe658de07ab97f937c7672b8a604cc825174c28d66d3afd047a9b4b2770bbe"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/f8/3e/32cbd0129a28686621434cbf17bb64bf1458bfb838f1f668262fefce145c/pillow-10.2.0.tar.gz"
    sha256 "e87f0b2c78157e12d7686b27d63c070fd65d994e8ddae6f328e0dcf4a0cd007e"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/55/59/8bccf4157baf25e4aa5a0bb7fa3ba8600907de105ebc22b0c78cfbf6f565/pygments-2.17.2.tar.gz"
    sha256 "da46cec9fd2de5be3a8a784f434e4c4ab670b4ff54d605c4c2717e9d49c4c367"
  end

  resource "pyrsistent" do
    url "https://files.pythonhosted.org/packages/ce/3a/5031723c09068e9c8c2f0bc25c3a9245f2b1d1aea8396c787a408f2b95ca/pyrsistent-0.20.0.tar.gz"
    sha256 "4c48f78f62ab596c679086084d0dd13254ae4f3d6c72a83ffdf5ebdef8f265a4"
  end

  resource "pyserial" do
    url "https://files.pythonhosted.org/packages/1e/7d/ae3f0a63f41e4d2f6cb66a5b57197850f919f59e558159a4dd3a818f5082/pyserial-3.5.tar.gz"
    sha256 "3c77e014170dfffbd816e6ffc205e9842efb10be9f58ec16d3e8675b4925cddb"
  end

  resource "pyusb" do
    url "https://files.pythonhosted.org/packages/d9/6e/433a5614132576289b8643fe598dd5d51b16e130fd591564be952e15bb45/pyusb-1.2.1.tar.gz"
    sha256 "a4cc7404a203144754164b8b40994e2849fde1cfff06b08492f12fff9d9de7b9"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "spinners" do
    url "https://files.pythonhosted.org/packages/d3/91/bb331f0a43e04d950a710f402a0986a54147a35818df0e1658551c8d12e1/spinners-0.0.24.tar.gz"
    sha256 "1eb6aeb4781d72ab42ed8a01dcf20f3002bf50740d7154d12fb8c9769bf9e27f"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/10/56/d7d66a84f96d804155f6ff2873d065368b25a07222a6fd51c4f24ef6d764/termcolor-2.4.0.tar.gz"
    sha256 "aab9e56047c8ac41ed798fa36d892a37aca6b3e9159f3e0c24bc64a9b3ac7b7a"
  end

  resource "types-colorama" do
    url "https://files.pythonhosted.org/packages/f5/c8/d5c5dabc9b19ee7c03748f354004e5f311470cb5d1373e33670160be368b/types-colorama-0.4.15.20240205.tar.gz"
    sha256 "7ae4f58d407d387f4f98b24d81e1b7657ec754ea1dc4619ae5bd27f0c367637e"
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
