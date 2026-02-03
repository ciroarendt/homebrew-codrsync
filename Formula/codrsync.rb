class Codrsync < Formula
  desc "Your AI's AI - Context engineering made simple"
  homepage "https://codrsync.dev"
  url "https://files.pythonhosted.org/packages/source/c/codrsync/codrsync-1.0.4.tar.gz"
  sha256 "306c53b818417394316a5237452dca1f915cd8c905a4fea47b81b5b31ebcf671"
  license "MIT"

  depends_on "pipx"

  def install
    # Create wrapper script that uses pipx run
    (bin/"codrsync").write <<~EOS
      #!/bin/bash
      exec pipx run codrsync==1.0.4 "$@"
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
