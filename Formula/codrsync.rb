class Codrsync < Formula
  include Language::Python::Virtualenv

  desc "AI-powered development orchestrator - Turn any dev into jedi ninja codr"
  homepage "https://codrsync.dev"
  url "https://files.pythonhosted.org/packages/source/c/codrsync/codrsync-1.0.0.tar.gz"
  sha256 "97eb5803d4ffe1d3168ec8718981ba0fec444d1f93aecc0e03788ba664129dfd"
  license "MIT"

  depends_on "python@3.12"

  resource "typer" do
    url "https://files.pythonhosted.org/packages/cb/ce/dca7b219571c06f2a08e07aab5a2b4e0e1fd68cd0206beb03d6f20b596f9/typer-0.15.1.tar.gz"
    sha256 "a0588c0a7fa68a1978a069818657778f86abe6ff5ea6abf472f940a08bfe4f0a"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/ab/3a/0316b28d0761c6734d6bc14e770d85506c986c85ffb239e688eebd9b0571/rich-13.9.4.tar.gz"
    sha256 "439594978a49a09530cff7ebc4b5c7103ef57c5a1b8e5e77deb6a5ab7c82d0a4"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/a6/c0/f0ce20e17e2c7e94e0f0f970fc7e3b9e4a4f9ae5f4bbf82f0c4a1ede6b0a/pydantic-2.10.5.tar.gz"
    sha256 "278b38dbbaec562011d659ee05f63346951b3a248a6f3fe875d68d6d2c2f3028"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/bc/57/e84d88dfe0aec03b7a2d4327012c1627e46fd7750e84d2c6406d52e14e01/python_dotenv-1.0.1.tar.gz"
    sha256 "e324ee90a023d808f1959c46bcbc04446a10ced277783dc6ee09987c37ec10ca"
  end

  resource "questionary" do
    url "https://files.pythonhosted.org/packages/a0/e5/ee6425040cce6c6fa6baab8eba5ac7dae5c6a2d03dfa4db1acfb7cd6efc9/questionary-2.1.0.tar.gz"
    sha256 "6302a3f785f9ae47356c2a1cbf186dce7d3babb38e4382cde1b1341a96e6503e"
  end

  resource "anthropic" do
    url "https://files.pythonhosted.org/packages/source/a/anthropic/anthropic-0.43.0.tar.gz"
    sha256 "06801f01d317a431d883230024318d48981758058bf7e079f33fb11f64b5a5c1"
  end

  resource "openpyxl" do
    url "https://files.pythonhosted.org/packages/3d/f9/88d94a75de065ea32619465d2f77b29a0469500e99012523b91cc4141571/openpyxl-3.1.5.tar.gz"
    sha256 "cf0e3cf56142f51f37c41de7d85bccff4c4a68ebff1ca3f28a8cb066e07e4a2e"
  end

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      codrsync has been installed!

      Quick start:
        codrsync --help
        codrsync init

      For AI features, set your Anthropic API key:
        export ANTHROPIC_API_KEY="your-key"

      Or login to codrsync cloud:
        codrsync auth --cloud

      Documentation: https://codrsync.dev/docs
    EOS
  end

  test do
    assert_match "codrsync", shell_output("#{bin}/codrsync --version")
  end
end
