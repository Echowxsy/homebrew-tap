class JaNetfilter < Formula
  desc "Network filter for Java"
  homepage "https://github.com/ja-netfilter/ja-netfilter"
  url "https://echowxsy.cn/ja-netfilter-all-7d68b53deb1b1a16f8e95ecf8f3f98805d18368d.zip"
  sha256 "9016a6679a4ee65316aba342454e5e04ec7bd1c932ab36607e311a29c4a90754"
  license "GPL-3.0-or-later"
  def install
    libexec.install Dir["*"]
  end
  def caveats
    on_macos do
      <<~EOS
        For enable ja-netfilter
          bash #{libexec}/scripts/install.sh
        For disenable ja-netfilter
          bash #{libexec}/scripts/uninstall.sh

        License code:
          https://jetbra.in/5d84466e31722979266057664941a71893322460
        License server:
          https://jetbra.in
      EOS
    end
  end
  test do
    assert_equal "done.", shell_output("#{libexec}/scripts/install.sh").strip
  end
end
