class Qmk < Formula
  include Language::Python::Virtualenv

  desc "Quantum Mechanical Keyboard (QMK) Firmware"
  homepage "https://docs.qmk.fm/"
  url "https://files.pythonhosted.org/packages/4c/d9/7e7f811b3f8b9851b6316f5580a25dadcf168ded06abf34d48879446bb96/qmk-0.2.0.tar.gz"
  sha256 "569fb1803e2f4061039776351a62edea0885c6f9b66c74a6b9bb53c9b00dcf71"

  revision 1

  depends_on "avrdude"
  depends_on "bootloadhid"
  depends_on "clang-format"
  depends_on "dfu-programmer"
  depends_on "dfu-util"
  depends_on "hidapi"
  depends_on "libusb"
  depends_on "mdloader"
  depends_on "osx-cross/arm/arm-gcc-bin@8"
  depends_on "osx-cross/avr/avr-gcc@8"
  depends_on "python"
  depends_on "teensy_loader_cli"

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/d7/d8/05696357e0311f5b5c316d7b95f46c669dd9c15aaeecbb48c7d0aeb88c40/appdirs-1.4.4.tar.gz"
    sha256 "7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41"
  end

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/6a/b4/3b1d48b61be122c95f4a770b2f42fc2552857616feba4d51f34611bd1352/argcomplete-1.12.3.tar.gz"
    sha256 "2c7dbffd8c045ea534921e63b0be6fe65e88599990d8dc408ac8c542b72a5445"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/ed/d6/3ebca4ca65157c12bd08a63e20ac0bdc21ac7f3694040711f9fd073c0ffb/attrs-21.2.0.tar.gz"
    sha256 "ef6aaac3ca6cd92904cdd0d83f629a15f18053ec84e6432106f7a4d04ae4f5fb"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/1f/bb/5d3246097ab77fa083a61bd8d3d527b7ae063c7d8e8671b1cf8c4ec10cbe/colorama-0.4.4.tar.gz"
    sha256 "5941b2b48a20143d2267e95b1c2a7603ce057ee39fd88e7329b0c292aa16869b"
  end

  resource "coverage" do
    url "https://files.pythonhosted.org/packages/38/df/d5e67851e83948def768d7fb1a0fd373665b20f56ff63ed220c6cd16cb11/coverage-5.5.tar.gz"
    sha256 "ebe78fe9a0e874362175b02371bdfbee64d8edc42a044253ddf4ee7d3c15212c"
  end

  resource "flake8" do
    url "https://files.pythonhosted.org/packages/9e/47/15b267dfe7e03dca4c4c06e7eadbd55ef4dfd368b13a0bab36d708b14366/flake8-3.9.2.tar.gz"
    sha256 "07528381786f2a6237b061f6e96610a4167b226cb926e2aa2b6b1d78057c576b"
  end

  resource "halo" do
    url "https://files.pythonhosted.org/packages/ee/48/d53580d30b1fabf25d0d1fcc3f5b26d08d2ac75a1890ff6d262f9f027436/halo-0.0.31.tar.gz"
    sha256 "7b67a3521ee91d53b7152d4ee3452811e1d2a6321975137762eb3d70063cc9d6"
  end

  resource "hid" do
    url "https://files.pythonhosted.org/packages/96/ba/e1923a3f7f865cd9f3c388bf6a42b4ed149ae1a00e68f71eec49ea3d3da4/hid-1.0.4.tar.gz"
    sha256 "f61b0382f37a334bc8ba8604bc84b94875ee4f594fbbaf82b2c3b3e827883fc1"
  end

  resource "hjson" do
    url "https://files.pythonhosted.org/packages/bd/dd/c0eb550f14daf2a15d387dd1479dd4880fefcfa66d42e64454feecc18331/hjson-3.0.2.tar.gz"
    sha256 "2838fd7200e5839ea4516ece953f3a19892c41089f0d933ba3f68e596aacfcd5"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/69/11/a69e2a3c01b324a77d3a7c0570faa372e8448b666300c4117a516f8b1212/jsonschema-3.2.0.tar.gz"
    sha256 "c8a85b28d377cc7737e46e2d9f2b4f44ee3c0e1deac6bf46ddefc7187d30797a"
  end

  resource "log-symbols" do
    url "https://files.pythonhosted.org/packages/45/87/e86645d758a4401c8c81914b6a88470634d1785c9ad09823fa4a1bd89250/log_symbols-0.0.14.tar.gz"
    sha256 "cf0bbc6fe1a8e53f0d174a716bc625c4f87043cc21eb55dd8a740cfe22680556"
  end

  resource "mccabe" do
    url "https://files.pythonhosted.org/packages/06/18/fa675aa501e11d6d6ca0ae73a101b2f3571a565e0f7d38e062eec18a91ee/mccabe-0.6.1.tar.gz"
    sha256 "dd8d182285a0fe56bace7f45b5e7d1a6ebcbf524e8f3bd87eb0f125271b8831f"
  end

  resource "milc" do
    url "https://files.pythonhosted.org/packages/3d/a0/6efa3893172a788b17a2642f77f6c77e32813aa882b1e0c23fcb13e67557/milc-1.4.2.tar.gz"
    sha256 "c6b2f19e3196b00a0060f8c883533e356f2054a9f81692b7b97ccee0d01626fd"
  end

  resource "nose2" do
    url "https://files.pythonhosted.org/packages/b5/6d/26c2edff2c51bbb266c17d3c402e0ca3624fee8786c1329bcc59d1d7e879/nose2-0.10.0.tar.gz"
    sha256 "886ba617a96de0130c54b24479bd5c2d74d5c940d40f3809c3a275511a0c4a60"
  end

  resource "pycodestyle" do
    url "https://files.pythonhosted.org/packages/02/b3/c832123f2699892c715fcdfebb1a8fdeffa11bb7b2350e46ecdd76b45a20/pycodestyle-2.7.0.tar.gz"
    sha256 "c389c1d06bf7904078ca03399a4816f974a1d590090fecea0c63ec26ebaf1cef"
  end

  resource "pyflakes" do
    url "https://files.pythonhosted.org/packages/a8/0f/0dc480da9162749bf629dca76570972dd9cce5bedc60196a3c912875c87d/pyflakes-2.3.1.tar.gz"
    sha256 "f5bc8ecabc05bb9d291eb5203d6810b49040f6ff446a756326104746cc00c1db"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/ba/6e/7a7c13c21d8a4a7f82ccbfe257a045890d4dbf18c023f985f565f97393e3/Pygments-2.9.0.tar.gz"
    sha256 "a18f47b506a429f6f4b9df81bb02beab9ca21d0a5fee38ed15aef65f0545519f"
  end

  resource "pyrsistent" do
    url "https://files.pythonhosted.org/packages/f4/d7/0fa558c4fb00f15aabc6d42d365fcca7a15fcc1091cd0f5784a14f390b7f/pyrsistent-0.18.0.tar.gz"
    sha256 "773c781216f8c2900b42a7b638d5b517bb134ae1acbebe4d1e8f1f41ea60eb4b"
  end

  resource "pyusb" do
    url "https://files.pythonhosted.org/packages/d9/6e/433a5614132576289b8643fe598dd5d51b16e130fd591564be952e15bb45/pyusb-1.2.1.tar.gz"
    sha256 "a4cc7404a203144754164b8b40994e2849fde1cfff06b08492f12fff9d9de7b9"
  end

  resource "qmk-dotty-dict" do
    url "https://files.pythonhosted.org/packages/8d/66/19e6e56e6839c495e5fcb258b07bbd4a7879a2865de84c35e12074484ea6/qmk_dotty_dict-1.3.0.post1.tar.gz"
    sha256 "3b611e393660bfaa6835c68e94784bae80fe07b8490978b5ecab03a0d2fc7ea2"
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
    url "https://files.pythonhosted.org/packages/8a/48/a76be51647d0eb9f10e2a4511bf3ffb8cc1e6b14e9e4fab46173aa79f981/termcolor-1.1.0.tar.gz"
    sha256 "1d6d69ce66211143803fbc56652b41d73b4a400a2891d7bf7a1cdf4c02de613b"
  end

  resource "yapf" do
    url "https://files.pythonhosted.org/packages/85/60/8532f7ca17cea13de00e80e2fe1e6bd59a9379856706a027536b19daf0d3/yapf-0.31.0.tar.gz"
    sha256 "408fb9a2b254c302f49db83c59f9aa0b4b0fd0ec25be3a5c51181327922ff63d"
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
