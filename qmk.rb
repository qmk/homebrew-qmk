class Qmk < Formula
  include Language::Python::Virtualenv

  depends_on "python"

  desc "A program to help users work with QMK Firmware."
  homepage "https://github.com/qmk/qmk_cli"
  url "https://files.pythonhosted.org/packages/cc/f7/ec3b4e368169fcadf92331098d8ad7659ad15a88009c98f48a4a9014fc26/qmk-0.0.28.tar.gz"
  sha256 "092f4ac63ede4eb8b043c585ae549782ef11b7866f348eef083b9c5b66fac578"

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/48/69/d87c60746b393309ca30761f8e2b49473d43450b150cb08f3c6df5c11be5/appdirs-1.4.3.tar.gz"
    sha256 "9e5896d1372858f8dd3344faf4e5014d21849c756c8d5701f78f8a103b372d92"
  end

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/9c/c5/4009a381ba46f8424832b6fa9a6d8c79b2089a0170beb434280d293a5b5c/argcomplete-1.10.0.tar.gz"
    sha256 "45836de8cc63d2f6e06b898cef1e4ce1e9907d246ec77ac8e64f23f153d6bec1"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/76/53/e785891dce0e2f2b9f4b4ff5bc6062a53332ed28833c7afede841f46a5db/colorama-0.4.1.tar.gz"
    sha256 "05eed71e2e327246ad6b38c540c4a3117230b19679b875190486ddd2d721422d"
  end
  
  resource "coverage" do
    url "https://files.pythonhosted.org/packages/85/d5/818d0e603685c4a613d56f065a721013e942088047ff1027a632948bdae6/coverage-4.5.4.tar.gz"
    sha256 "e07d9f1a23e9e93ab5c62902833bf3e4b1f65502927379148b6622686223125c"
  end

  resource "entrypoints" do
    url "https://files.pythonhosted.org/packages/b4/ef/063484f1f9ba3081e920ec9972c96664e2edb9fdc3d8669b0e3b8fc0ad7c/entrypoints-0.3.tar.gz"
    sha256 "c70dd71abe5a8c85e55e12c19bd91ccfeec11a6e99044204511f9ed547d48451"
  end

  resource "flake8" do
    url "https://files.pythonhosted.org/packages/a5/bb/7e707d8001aca96f15f684b02176ecb0575786f041293f090b44ea04f2d0/flake8-3.7.9.tar.gz"
    sha256 "45681a117ecc81e870cbf1262835ae4af5e7a8b08e40b944a8a6e6b895914cfb"
  end

  resource "hjson" do
    url "https://files.pythonhosted.org/packages/8a/92/6b6b85064f8a88cb3b31901d839e7b45c33e4ee450bb1b3cf0c226cca8ec/hjson-3.0.1.tar.gz"
    sha256 "1d1727faa6aaef2973921877125a3ab7c5f6d34b93233179d01770f41fab51f9"
  end

  resource "mccabe" do
    url "https://files.pythonhosted.org/packages/06/18/fa675aa501e11d6d6ca0ae73a101b2f3571a565e0f7d38e062eec18a91ee/mccabe-0.6.1.tar.gz"
    sha256 "dd8d182285a0fe56bace7f45b5e7d1a6ebcbf524e8f3bd87eb0f125271b8831f"
  end

  resource "nose2" do
    url "https://files.pythonhosted.org/packages/65/39/7038f482bfd736dad4d5c0b888bf6b71b02517d098e6c99b11213a49ece3/nose2-0.9.1.tar.gz"
    sha256 "0ede156fd7974fa40893edeca0b709f402c0ccacd7b81b22e76f73c116d1b999"
  end

  resource "pycodestyle" do
    url "https://files.pythonhosted.org/packages/1c/d1/41294da5915f4cae7f4b388cea6c2cd0d6cd53039788635f6875dfe8c72f/pycodestyle-2.5.0.tar.gz"
    sha256 "e40a936c9a450ad81df37f549d676d127b1b66000a6c500caa2b085bc0ca976c"
  end

  resource "pyflakes" do
    url "https://files.pythonhosted.org/packages/52/64/87303747635c2988fcaef18af54bfdec925b6ea3b80bcd28aaca5ba41c9e/pyflakes-2.1.1.tar.gz"
    sha256 "d976835886f8c5b31d47970ed689944a0262b5f3afa00a5a7b4dc81e5449f8a2"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
    sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
  end

  resource "yapf" do
    url "https://files.pythonhosted.org/packages/89/41/7f7c884531730c0cb471764e1ddf50f59d25bb2ab258ede633264344e9cb/yapf-0.28.0.tar.gz"
    sha256 "6f94b6a176a7c114cfa6bad86d40f259bbe0f10cf2fa7f2f4b3596fc5802a41b"
  end

  def install
    virtualenv_install_with_resources
  end
end
