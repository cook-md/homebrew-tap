class Cookbot < Formula
  desc "AI-powered meal planning assistant with Cooklang"
  homepage "https://cook.md"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cook-md/cookbot/releases/download/cookbot-v0.1.8/cookbot-x86_64-apple-darwin.tar.gz"
      sha256 "05f57fd03d2e5b949d125112e45abf310eaa5fc7cafd72c99f403076eaf905ac"
    else
      url "https://github.com/cook-md/cookbot/releases/download/cookbot-v0.1.8/cookbot-aarch64-apple-darwin.tar.gz"
      sha256 "cd10dfc85e96c873ddfa2670058ced47796783b07f5ae221185b8b64d4f355a8"
    end
  end

  on_linux do
    url "https://github.com/cook-md/cookbot/releases/download/cookbot-v0.1.8/cookbot-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1b1add1985dddd9b5bddfd8c6c6772a93c1cd933fc18f84388e724c1b5217086"
  end

  def install
    bin.install "cookbot"
  end

  test do
    system "#{bin}/cookbot", "--version"
  end
end
