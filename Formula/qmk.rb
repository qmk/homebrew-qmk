class Qmk < Formula
  include Language::Python::Virtualenv

  desc "Quantum Mechanical Keyboard (QMK) Firmware"
  homepage "https://docs.qmk.fm/"
  url "https://files.pythonhosted.org/packages/08/df/60d820bcaf228d620cf1e894ffd4b6cfd8084504c0e49335ca1df29713cd/qmk-1.1.2.tar.gz"
  sha256 "f871f88f1a0ca31ba31a009d716417e46bc538a4f8df8ede6a801c9076c22998"
  license "MIT"
  revision 1

  bottle do
    root_url "https://github.com/qmk/homebrew-qmk/releases/download/qmk-1.1.2_1"
    sha256 cellar: :any, big_sur: "9db297c6dc3b0a044be8b34c02dd74b1388963d5d190fe85e10cc24721653d03"
  end

  depends_on "avrdude"
  depends_on "bootloadhid"
  depends_on "clang-format"
  depends_on "dfu-programmer"
  depends_on "dfu-util"
  depends_on "hidapi"
  depends_on "libusb"
  depends_on "make"
  depends_on "mdloader"
  depends_on "osx-cross/arm/arm-gcc-bin@8"
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
    url "https://files.pythonhosted.org/packages/9d/50/e5b3e9824a387920c4b92870359c9f7dbf21a6cd6d3dff5bf4fd3b50237a/argcomplete-3.0.5.tar.gz"
    sha256 "fe3ce77125f434a0dd1bffe5f4643e64126d5731ce8d173d36f62fa43d6eb6f7"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/21/31/3f468da74c7de4fcf9b25591e682856389b3400b4b62f201e65f15ea3e07/attrs-22.2.0.tar.gz"
    sha256 "c9227bfc2f01993c03f68db37d1d15c9690188323c067c641f1a35ca58185f99"
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
    url "https://files.pythonhosted.org/packages/e0/2a/87d8d87343c9be4f839972b0a3bef66b8b4f0d350cda11f2d3d8222f29ab/hid-1.0.5.tar.gz"
    sha256 "1e954e7f7ab9b7c9dfc78db59504692c17db3b71249492b976b1525b97dbb0e8"
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
    url "https://files.pythonhosted.org/packages/92/c0/3377091d68d98f7448e9e3624d6692548efcd98917cc48a69efb650a3eb4/milc-1.6.6.tar.gz"
    sha256 "a4a1673718aaceefeb62c1799e48825bc6f4e56bfd8ad4a8e341a7622e6ff000"
  end

  resource "Pillow" do
    url "https://files.pythonhosted.org/packages/00/d5/4903f310765e0ff2b8e91ffe55031ac6af77d982f0156061e20a4d1a8b2d/Pillow-9.5.0.tar.gz"
    sha256 "bf548479d336726d7a0eceb6e767e179fbde37833ae42794602631a070d630f1"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/da/6a/c427c06913204e24de28de5300d3f0e809933f376e0b7df95194b2bb3f71/Pygments-2.14.0.tar.gz"
    sha256 "b3ed06a9e8ac9a9aae5a6f5dbe78a8a58655d17b43b93c078f094ddc476ae297"
  end

  resource "pyrsistent" do
    url "https://files.pythonhosted.org/packages/bf/90/445a7dbd275c654c268f47fa9452152709134f61f09605cf776407055a89/pyrsistent-0.19.3.tar.gz"
    sha256 "1a2994773706bbb4995c31a97bc94f1418314923bd1048c6d964837040376440"
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
    url "https://files.pythonhosted.org/packages/e5/4e/b2a54a21092ad2d5d70b0140e4080811bee06a39cc8481651579fe865c89/termcolor-2.2.0.tar.gz"
    sha256 "dfc8ac3f350788f23b2947b3e6cfa5a53b630b612e6cd8965a015a776020b99a"
  end

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      QMK Firmware has been installed but your environment may not have been setup yet. Please set it up now:

          qmk setup

      If you have a fork already you can specify it like this:

          qmk setup <username>/qmk_firmware

      This will create qmk_firmware in your home directory. If you'd like to change this location, use the -H flag as well:

          qmk setup -H /your/preferred/path
    EOS
  end

  test do
    system bin/"qmk", "setup", "-n"
  end
end
