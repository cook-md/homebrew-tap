class Cookbot < Formula
  desc "AI-powered meal planning assistant with Cooklang"
  homepage "https://cook.md"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cook-md/cookbot/releases/download/cookbot-v0.1.10/cookbot-x86_64-apple-darwin.tar.gz"
      sha256 "a2f4c02bfe0f7dea1665df299ecf46cb4594ca3b3187fd1cac279d452c97f610"
    else
      url "https://github.com/cook-md/cookbot/releases/download/cookbot-v0.1.10/cookbot-aarch64-apple-darwin.tar.gz"
      sha256 "39cb895e4ae134da2f4ceb00b9c76574af138b2db72b57a89ae14183cf83df52"
    end
  end

  on_linux do
    url "https://github.com/cook-md/cookbot/releases/download/cookbot-v0.1.10/cookbot-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "618d2035ccc3db1168238466b0b7145ee7c59688f02b5e70bc12f1e3da4c2592"
  end

  def install
    bin.install "cookbot"
  end

  test do
    system "#{bin}/cookbot", "--version"
  end
end
