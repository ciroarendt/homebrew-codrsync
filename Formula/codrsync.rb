class Codrsync < Formula
  desc "AI-powered development orchestrator - Turn any dev into jedi ninja codr"
  homepage "https://codrsync.dev"
  url "https://files.pythonhosted.org/packages/source/c/codrsync/codrsync-1.0.0.tar.gz"
  sha256 "97eb5803d4ffe1d3168ec8718981ba0fec444d1f93aecc0e03788ba664129dfd"
  license "MIT"

  depends_on "pipx"

  def install
    # Create wrapper script that uses pipx run
    (bin/"codrsync").write <<~EOS
      #!/bin/bash
      exec pipx run codrsync==1.0.0 "$@"
    EOS
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

      Tip: For faster startup, install globally with:
        pipx install codrsync
    EOS
  end

  test do
    assert_match "codrsync", shell_output("#{bin}/codrsync --version")
  end
end
