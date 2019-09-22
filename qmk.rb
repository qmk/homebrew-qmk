class Qmk < Formula
  include Language::Python::Virtualenv

  depends_on "python"

  desc "A program to help users work with QMK Firmware."
  homepage "https://github.com/qmk/qmk_cli"
  url "https://files.pythonhosted.org/packages/7d/5d/9fdc1a479c07dede2b1a5cc4522cf9edf894f32b47e4d8ac6de5469c386f/qmk-0.0.12.tar.gz"
  sha256 "72c022e2ec5963af1a8c791b423560c9aa342635c69ce430a29d3aa487ce9b34"

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/9c/c5/4009a381ba46f8424832b6fa9a6d8c79b2089a0170beb434280d293a5b5c/argcomplete-1.10.0.tar.gz"
    sha256 "45836de8cc63d2f6e06b898cef1e4ce1e9907d246ec77ac8e64f23f153d6bec1"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/76/53/e785891dce0e2f2b9f4b4ff5bc6062a53332ed28833c7afede841f46a5db/colorama-0.4.1.tar.gz"
    sha256 "05eed71e2e327246ad6b38c540c4a3117230b19679b875190486ddd2d721422d"
  end
  
  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/48/69/d87c60746b393309ca30761f8e2b49473d43450b150cb08f3c6df5c11be5/appdirs-1.4.3.tar.gz"
    sha256 "9e5896d1372858f8dd3344faf4e5014d21849c756c8d5701f78f8a103b372d92"
  end

  resource "nose2" do
    url "https://files.pythonhosted.org/packages/65/39/7038f482bfd736dad4d5c0b888bf6b71b02517d098e6c99b11213a49ece3/nose2-0.9.1.tar.gz"
    sha256 "0ede156fd7974fa40893edeca0b709f402c0ccacd7b81b22e76f73c116d1b999"
  end

  def install
    virtualenv_install_with_resources
  end
end
