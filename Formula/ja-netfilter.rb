class JaNetfilter < Formula
  desc "Network filter for Java"
  homepage "https://github.com/ja-netfilter/ja-netfilter"
  url "https://echowxsy.cn/ja-netfilter-all-7d68b53deb1b1a16f8e95ecf8f3f98805d18368d.zip"
  sha256 "9016a6679a4ee65316aba342454e5e04ec7bd1c932ab36607e311a29c4a90754"
  license "GPL-3.0-or-later"
  depends_on "openjdk"
  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"scripts/install.sh"
  end
  def uninstall
    bin.write_exec_script libexec/"scripts/uninstall.sh"
  end
  test do
    assert_equal "done.", shell_output("#{libexec}/scripts/install.sh").strip
  end
end
