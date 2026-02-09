class Codrsync < Formula
  desc "Your AI's AI - Context engineering made simple"
  homepage "https://codrsync.dev"
  url "https://files.pythonhosted.org/packages/b6/6b/046bf48361fcbacdaa511c56a5cc63d3c3f49e3aeabda2b4b4f351a1d4f1/codrsync-1.1.2.tar.gz"
  sha256 "0fd1d1e1d80975e81afedcbcf3cccdb9477444d68ac2246f90b8dd262c457f25"
  license "MIT"

  depends_on "pipx"

  def install
    # Create wrapper script that uses pipx run
    (bin/"codrsync").write <<~EOS
      #!/bin/bash
      exec pipx run codrsync==1.1.2 "$@"
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
