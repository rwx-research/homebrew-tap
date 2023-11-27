class Mint < Formula
  desc "Mint - A language-agnostic build tool designed to accelerate engineering feedback loops and lower CI costs"
  homepage "https://www.rwx.com/mint"
  version "0.0.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-x86_64", user_agent: :fake
    sha256 "ff9297ee2273d26032fe1ed472362c01db3d760481f54c4c360dda58cdd3de1b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-aarch64", user_agent: :fake
    sha256 "a81114b15f96e5d0d7c881bfe91e807295d0ad16b1d7de042cc5cd479772ee54"
  end

  def install
    filename = Hardware::CPU.intel? ? "mint-darwin-x86_64" : "mint-darwin-aarch64"
    bin.install filename => "mint"
  end

  test do
    system "#{bin}/mint --version"
  end
end
