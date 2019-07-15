class Qmk < Formula
  include Language::Python::Virtualenv

  depends_on "python"

  desc "A program to help users work with QMK Firmware."
  homepage "https://github.com/qmk/qmk_cli"
  url "https://files.pythonhosted.org/packages/ea/89/850c8b28edd14529b9d99e0c8541e5638b5a1ad4b5d8f5f823f68630af23/qmk-0.0.7.tar.gz"
  sha256 "c31714b3d365a7b15d0ea4cc1bed5148176657466d81b3de7d7c7fcfb2174750"

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/9c/c5/4009a381ba46f8424832b6fa9a6d8c79b2089a0170beb434280d293a5b5c/argcomplete-1.10.0.tar.gz"
    sha256 "45836de8cc63d2f6e06b898cef1e4ce1e9907d246ec77ac8e64f23f153d6bec1"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/76/53/e785891dce0e2f2b9f4b4ff5bc6062a53332ed28833c7afede841f46a5db/colorama-0.4.1.tar.gz"
    sha256 "05eed71e2e327246ad6b38c540c4a3117230b19679b875190486ddd2d721422d"
  end
  
  def install
    virtualenv_install_with_resources
  end
end
