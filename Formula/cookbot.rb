class Cookbot < Formula
  desc "AI-powered meal planning assistant with Cooklang"
  homepage "https://cook.md"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cook-md/cookbot/releases/download/cookbot-v0.1.9/cookbot-x86_64-apple-darwin.tar.gz"
      sha256 "61722c852348980081819c7f2e983aef40af37fd19c5cc4868900b2ea95c7932"
    else
      url "https://github.com/cook-md/cookbot/releases/download/cookbot-v0.1.9/cookbot-aarch64-apple-darwin.tar.gz"
      sha256 "f8ae519c6fe8894020abd797b7b9f619db1babd3ee70134dafc7dc8900bf294f"
    end
  end

  on_linux do
    url "https://github.com/cook-md/cookbot/releases/download/cookbot-v0.1.9/cookbot-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2fe590fbc997a2de1024aeaac37c5ac91b8bfe6d657e7927fb351711d3e14111"
  end

  def install
    bin.install "cookbot"
  end

  test do
    system "#{bin}/cookbot", "--version"
  end
end
