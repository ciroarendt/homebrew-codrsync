class Codrsync < Formula
  include Language::Python::Virtualenv

  desc "AI-powered development orchestrator - Turn any dev into jedi ninja codr"
  homepage "https://codrsync.dev"
  url "https://files.pythonhosted.org/packages/source/c/codrsync/codrsync-1.0.0.tar.gz"
  sha256 "97eb5803d4ffe1d3168ec8718981ba0fec444d1f93aecc0e03788ba664129dfd"
  license "MIT"

  depends_on "python@3.12"

  resource "typer" do
    url "https://files.pythonhosted.org/packages/36/bf/8825b5929afd84d0dabd606c67cd57b8388cb3ec385f7ef19c5cc2202069/typer-0.21.1.tar.gz"
    sha256 "ea835607cd752343b6b2b7ce676893e5a0324082268b48f27aa058bdb7d2145d"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/a1/84/4831f881aa6ff3c976f6d6809b58cdfa350593ffc0dc3c58f5f6586780fb/rich-14.3.1.tar.gz"
    sha256 "b8c5f568a3a749f9290ec6bddedf835cec33696bfc1e48bcfecb276c7386e4b8"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/69/44/36f1a6e523abc58ae5f928898e4aca2e0ea509b5aa6f6f392a5d882be928/pydantic-2.12.5.tar.gz"
    sha256 "4d351024c75c0f085a9febbb665ce8c0c6ec5d30e903bdb6394b7ede26aebb49"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/f0/26/19cadc79a718c5edbec86fd4919a6b6d3f681039a2f6d66d14be94e75fb9/python_dotenv-1.2.1.tar.gz"
    sha256 "42667e897e16ab0d66954af0e60a9caa94f0fd4ecf3aaf6d2d260eec1aa36ad6"
  end

  resource "questionary" do
    url "https://files.pythonhosted.org/packages/f6/45/eafb0bba0f9988f6a2520f9ca2df2c82ddfa8d67c95d6625452e97b204a5/questionary-2.1.1.tar.gz"
    sha256 "3d7e980292bb0107abaa79c68dd3eee3c561b83a0f89ae482860b181c8bd412d"
  end

  resource "anthropic" do
    url "https://files.pythonhosted.org/packages/eb/85/6cb5da3cf91de2eeea89726316e8c5c8c31e2d61ee7cb1233d7e95512c31/anthropic-0.77.0.tar.gz"
    sha256 "ce36efeb80cb1e25430a88440dc0f9aa5c87f10d080ab70a1bdfd5c2c5fbedb4"
  end

  resource "openpyxl" do
    url "https://files.pythonhosted.org/packages/3d/f9/88d94a75de065ea32619465d2f77b29a0469500e99012523b91cc4141cd1/openpyxl-3.1.5.tar.gz"
    sha256 "cf0e3cf56142039133628b5acffe8ef0c12bc902d2aadd3e0fe5878dc08d1050"
  end

  # Additional dependencies
  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07571/markdown-it-py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/7c/2d/c3338d48ea6cc0feb8446d8e6937e1408088a72a39937982cc6111d17f84/pygments-2.19.1.tar.gz"
    sha256 "61c16d2a8576dc0649d9f39e089b5f02bcd27fba10d8fb4dcc28173f7a45151f"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/d1/bc/51647cd02527e87d05cb083ccc402f93e441606f1f0a0959872a7de4a71b/typing_extensions-4.14.0.tar.gz"
    sha256 "8676b788e32f02ab42d9f7c61324048ae4c6d844a399eebace3d4979d75ceef4"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/d3/65/0ba6416d8110bea8be69c8e8a6d34f93eb556d8a4f3f41e7eb2e5f537fee/pydantic_core-2.33.2.tar.gz"
    sha256 "7cb8bc3605c29176e1b105350d2e6474142d7c1bd1d9327c4a9bdb46bf827acc"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/bb/6e/9d084c929dfe9e3bfe0c6a47e31f78a25c54627d64a66e884a8bf5474f1c/prompt_toolkit-3.0.51.tar.gz"
    sha256 "931a162e3b27fc90c86f1b48bb1fb2c528c2761475e57c9c06de13311c7b54ed"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aedd2139f1f83b7229/wcwidth-0.2.13.tar.gz"
    sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
  end

  resource "et-xmlfile" do
    url "https://files.pythonhosted.org/packages/d3/38/af70d7ab1ae9d4da450eeec1fa3918940a5fafb9f6f476a60ae82b2c6473/et_xmlfile-2.0.0.tar.gz"
    sha256 "dab3f4764309081ce75662649be815c4c9c198e7e5ef78e3b03f3a502c0a24a7"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee76c893048f85dc0bc278603dac6a10d5c92b13/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392c2f2c4de4c5f7ef"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300f1e014f7646430"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/1c/ab/035571b62bc90c04d4acb0d6aec24fb8d73d1c547f8a1ac0ac72a67d3c1c/certifi-2025.4.26.tar.gz"
    sha256 "0a816057ea3cdefcef70270d2c515e4506bbc954f417fa5ade2021213bb8f0c6"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a3/73/199a98fc2dae33535d6b8e8e6ec01f8c1d76c9adb096c6b7d64823038cde/anyio-4.8.0.tar.gz"
    sha256 "1d9fe889df5212298c0c0723fa20479d1b94883a2df44bd3897aa91083316f7a"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/fc/f8/98eea607f65de6527f8a2e8885fc8015d3e6f5775df186e443e0964a11c3/distro-1.9.0.tar.gz"
    sha256 "2fa77c6fd8940f116ee1d6b94a2f90b13b5ea8d019b98bc8bafdcabcdd9bdbed"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/f4/71/546f7c2bfb6b8ebb041ace5c55c831bba87a990781e9ca0d8fa04a07e4f9/jiter-0.10.0.tar.gz"
    sha256 "07a7142c38aacc85194391108dc91b5b57093c978a7932bd66b999b21e498926"
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
