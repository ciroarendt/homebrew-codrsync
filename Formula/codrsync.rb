class Codrsync < Formula
  include Language::Python::Virtualenv

  desc "AI-powered development orchestrator - Turn any dev into jedi ninja codr"
  homepage "https://codrsync.dev"
  url "https://files.pythonhosted.org/packages/source/c/codrsync/codrsync-1.0.0.tar.gz"
  sha256 "97eb5803d4ffe1d3168ec8718981ba0fec444d1f93aecc0e03788ba664129dfd"
  license "MIT"

  depends_on "python@3.12"

  def install
    # Create virtualenv manually since pip module may not be available
    venv = virtualenv_create(libexec, "python3.12")

    # Download and install pip in the venv first
    system libexec/"bin/python", "-m", "ensurepip", "--upgrade"

    # Install codrsync from PyPI
    system libexec/"bin/pip", "install", "codrsync==1.0.0"

    # Link the binary
    bin.install_symlink libexec/"bin/codrsync"
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
