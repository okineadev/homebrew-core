class Forbidden < Formula
  include Language::Python::Virtualenv

  desc "Bypass 4xx HTTP response status codes and more"
  homepage "https://github.com/ivan-sincek/forbidden"
  url "https://files.pythonhosted.org/packages/cf/f2/4009d0284192f2f871007c158b22d47a60fda3734a77f432ca66b96fddd1/forbidden-11.0.tar.gz"
  sha256 "0fcaff3b0f3b82461efaae084221f8b3c01ad76a65248ac888b92f297fa623e8"
  license "MIT"
  head "https://github.com/ivan-sincek/forbidden.git", branch: "main"

  bottle do
    sha256 cellar: :any,                 arm64_sonoma:   "56c6756dce86c20907bdef4d185c2debb1817eb5cdccb7d5de89ec3b5f4704c2"
    sha256 cellar: :any,                 arm64_ventura:  "7303a123b05e29f9c43908413f150f5a8d55ff179fb9f5eec39ad86b752913fe"
    sha256 cellar: :any,                 arm64_monterey: "90e0947274bb697c954d48ad675ecc5ed191edfb06589061b3a0b2b647cb149e"
    sha256 cellar: :any,                 sonoma:         "ca7ae107cd549625320cb64839d861d9f739e819e33be5a401ec5ec446c8e9c1"
    sha256 cellar: :any,                 ventura:        "a65fcb078ac1d508de5eee52ee41103804e13f9081c0163a2013ce504f561292"
    sha256 cellar: :any,                 monterey:       "5bd75c4febc35885b2b2cd194c84306edc8cfd38aa12e46fc2ea0ed10a5fc483"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "ca166bea0aece24a39d67a53677d364f5e28103bd20b583d9b4c7f142f661861"
  end

  depends_on "certifi"
  depends_on "curl"
  depends_on "openssl@3"
  depends_on "python@3.12"

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz"
    sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "datetime" do
    url "https://files.pythonhosted.org/packages/2f/66/e284b9978fede35185e5d18fb3ae855b8f573d8c90a56de5f6d03e8ef99e/DateTime-5.5.tar.gz"
    sha256 "21ec6331f87a7fcb57bd7c59e8a68bfffe6fcbf5acdbbc7b356d6a9a020191d3"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/21/ed/f86a79a07470cb07819390452f178b3bef1d375f2ec021ecfc709fc7cf07/idna-3.7.tar.gz"
    sha256 "028ff3aadf0609c1fd278d8ea3089299412a7a8b9bd005dd08b9f8285bcb5cfc"
  end

  resource "pycurl" do
    url "https://files.pythonhosted.org/packages/c9/5a/e68b8abbc1102113b7839e708ba04ef4c4b8b8a6da392832bb166d09ea72/pycurl-7.45.3.tar.gz"
    sha256 "8c2471af9079ad798e1645ec0b0d3d4223db687379d17dd36a70637449f81d6b"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/30/72/8259b2bccfe4673330cea843ab23f86858a419d8f1493f66d413a76c7e3b/PyJWT-2.8.0.tar.gz"
    sha256 "57e28d156e3d5c10088e0c68abb90bfac3df82b40a71bd0daa20c65ccd5c23de"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/90/26/9f1f00a5d021fff16dee3de13d43e5e978f3d58928e129c3a62cf7eb9738/pytz-2024.1.tar.gz"
    sha256 "2a29735ea9c18baf14b448846bde5a48030ed267578472d8955cd0e7443a9812"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/24/ca/2477acbf4d4abe7b2efaa775d5e96dfa236982671bd01a4172e81278d411/regex-2024.5.10.tar.gz"
    sha256 "304e7e2418146ae4d0ef0e9ffa28f881f7874b45b4994cc2279b21b6e7ae50c8"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/d6/4f/b10f707e14ef7de524fe1f8988a294fb262a29c9b5b12275c7e188864aed/setuptools-69.5.1.tar.gz"
    sha256 "6c1fccdac05a97e598fb0ae3bbed5904ccb317337a51139dcd51453611bbb987"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/ec/fe/802052aecb21e3797b8f7902564ab6ea0d60ff8ca23952079064155d1ae1/tabulate-0.9.0.tar.gz"
    sha256 "0095b12bf5966de529c0feb1fa08671671b3368eec77d7ef7ab114be2c068b3c"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/10/56/d7d66a84f96d804155f6ff2873d065368b25a07222a6fd51c4f24ef6d764/termcolor-2.4.0.tar.gz"
    sha256 "aab9e56047c8ac41ed798fa36d892a37aca6b3e9159f3e0c24bc64a9b3ac7b7a"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7a/50/7fd50a27caa0652cd4caf224aa87741ea41d3265ad13f010886167cfcc79/urllib3-2.2.1.tar.gz"
    sha256 "d0570876c61ab9e520d776c38acbbb5b05a776d3f9ff98a5c8fd5162a444cf19"
  end

  resource "zope-interface" do
    url "https://files.pythonhosted.org/packages/2a/bd/a30bf6df24480017171da4f52ee527a72c7a6450c86355011e0156e71723/zope.interface-6.3.tar.gz"
    sha256 "f83d6b4b22262d9a826c3bd4b2fbfafe1d0000f085ef8e44cd1328eea274ae6a"
  end

  def install
    virtualenv_install_with_resources start_with: "setuptools"
  end

  test do
    output = shell_output(bin/"forbidden -u https://brew.sh -t methods -f GET")
    assert_match "\"code\": 200", output
  end
end
