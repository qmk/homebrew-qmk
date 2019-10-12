class Qmk < Formula
  include Language::Python::Virtualenv

  depends_on "python"

  desc "A program to help users work with QMK Firmware."
  homepage "https://github.com/qmk/qmk_cli"
  url "https://files.pythonhosted.org/packages/ee/d1/501ceed28a0afee5d2e2eef40dd36b62eb33aa1855602da41247f7fce5b3/qmk-0.0.16.tar.gz"
  sha256 "90cdb01c04e963fa4bda979ca824c727c077b632cafa035e4a75120bd9cd62bc"

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/9c/c5/4009a381ba46f8424832b6fa9a6d8c79b2089a0170beb434280d293a5b5c/argcomplete-1.10.0.tar.gz"
    sha256 "45836de8cc63d2f6e06b898cef1e4ce1e9907d246ec77ac8e64f23f153d6bec1"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/76/53/e785891dce0e2f2b9f4b4ff5bc6062a53332ed28833c7afede841f46a5db/colorama-0.4.1.tar.gz"
    sha256 "05eed71e2e327246ad6b38c540c4a3117230b19679b875190486ddd2d721422d"
  end
  
  resource "hjson" do
    url "https://files.pythonhosted.org/packages/8a/92/6b6b85064f8a88cb3b31901d839e7b45c33e4ee450bb1b3cf0c226cca8ec/hjson-3.0.1.tar.gz"
    sha256 "1d1727faa6aaef2973921877125a3ab7c5f6d34b93233179d01770f41fab51f9"
  end

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/48/69/d87c60746b393309ca30761f8e2b49473d43450b150cb08f3c6df5c11be5/appdirs-1.4.3.tar.gz"
    sha256 "9e5896d1372858f8dd3344faf4e5014d21849c756c8d5701f78f8a103b372d92"
  end

  resource "nose2" do
    url "https://files.pythonhosted.org/packages/65/39/7038f482bfd736dad4d5c0b888bf6b71b02517d098e6c99b11213a49ece3/nose2-0.9.1.tar.gz"
    sha256 "0ede156fd7974fa40893edeca0b709f402c0ccacd7b81b22e76f73c116d1b999"
  end

  resource "coverage" do
    url "https://files.pythonhosted.org/packages/85/d5/818d0e603685c4a613d56f065a721013e942088047ff1027a632948bdae6/coverage-4.5.4.tar.gz"
    sha256 "e07d9f1a23e9e93ab5c62902833bf3e4b1f65502927379148b6622686223125c"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
    sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
  end

  def install
    virtualenv_install_with_resources
  end
end
