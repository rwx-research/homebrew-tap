class Mint < Formula
  desc "Mint is the CI platform with the best developer experience, powering the fastest builds"
  homepage "https://www.rwx.com/mint"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-x86_64", user_agent: :fake
    sha256 "43b370bffa524a33246e7512f2be03f680d4ebd428e09bca87256eb5b88c3ed1"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-aarch64", user_agent: :fake
    sha256 "b7c7d33a6c990b216e89f939252f7a0a42dc9307df4f32238ca125f3b6975359"
  end

  def install
    filename = Hardware::CPU.intel? ? "mint-darwin-x86_64" : "mint-darwin-aarch64"
    bin.install filename => "mint"
  end

  test do
    system "#{bin}/mint --version"
  end
end
