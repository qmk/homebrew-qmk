class Qmk < Formula
  include Language::Python::Virtualenv

  depends_on "python"

  desc "A program to help users work with QMK Firmware."
  homepage "https://github.com/qmk/qmk_cli"
  url "https://files.pythonhosted.org/packages/bc/46/83a9701e8970ab9a369edab8dea578f152dbb7108412fc6ffb436b3e61a9/qmk-0.0.5.tar.gz"

  resource "qmk" do
    url "https://files.pythonhosted.org/packages/bc/46/83a9701e8970ab9a369edab8dea578f152dbb7108412fc6ffb436b3e61a9/qmk-0.0.5.tar.gz"
    sha256 "eac94799ba2da2ed9ca50222d32e4031e1065810f3f874eeb047b15b27261b13"
  end

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/9c/c5/4009a381ba46f8424832b6fa9a6d8c79b2089a0170beb434280d293a5b5c/argcomplete-1.10.0.tar.gz"
    sha256 "45836de8cc63d2f6e06b898cef1e4ce1e9907d246ec77ac8e64f23f153d6bec1"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/76/53/e785891dce0e2f2b9f4b4ff5bc6062a53332ed28833c7afede841f46a5db/colorama-0.4.1.tar.gz"
    sha256 "05eed71e2e327246ad6b38c540c4a3117230b19679b875190486ddd2d721422d"
  end
  
  def install
    venv = virtualenv_create(libexec)
    %w[argcomplete colorama].each do |r|
      venv.pip_install resource(r)
    end

    venv.pip_install_and_link(qmk)
    # bin_before = Dir[@venv_root/"bin/*"].to_set
    # venv.pip_install resource(qmk)
    # bin_after = Dir[@venv_root/"bin/*"].to_set
    # bin_to_link = (bin_after - bin_before).to_a
    # @formula.bin.install_symlink(bin_to_link)
  end
end
