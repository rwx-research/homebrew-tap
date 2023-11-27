class Mint < Formula
  desc "Mint - A language-agnostic build tool designed to accelerate engineering feedback loops and lower CI costs"
  homepage "https://www.rwx.com/mint"
  version "0.0.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-x86_64", user_agent: :fake
    sha256 "736aae8d0999078cc17e3bd1f3217ea80ff3a898575abb8be8bde4a9243780a5"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-aarch64", user_agent: :fake
    sha256 "5a774ab21fa6a73a2783b9206f9b4d23844564920d4c811f71d2b52055df41cd"
  end

  def install
    filename = Hardware::CPU.intel? ? "mint-darwin-x86_64" : "mint-darwin-aarch64"
    bin.install filename => "mint"
  end

  test do
    system "#{bin}/mint --version"
  end
end
