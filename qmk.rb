class Qmk < Formula
  include Language::Python::Virtualenv

  depends_on "python"

  desc "A program to help users work with QMK Firmware."
  homepage "https://github.com/qmk/qmk_cli"
  url "https://files.pythonhosted.org/packages/ae/c7/14709382c5b07433a8530ca7f8493a1a13b0bf2b5be195f5568aa326f13f/qmk-0.0.11.tar.gz"
  sha256 "064f7d9280e618ad257cb7add89cd25596f15258f4219563c094f8606c17adeb"

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

  def install
    virtualenv_install_with_resources
  end
end
