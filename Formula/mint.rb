class Mint < Formula
  desc "Mint is the CI platform with the best developer experience, powering the fastest builds"
  homepage "https://www.rwx.com/mint"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-x86_64", user_agent: :fake
    sha256 "8c13b18ebad7b2afa7490ea2aabb3c2a21a5090891d56f01543a9fd905f9ddae"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-aarch64", user_agent: :fake
    sha256 "3f3f6617ac327ceeef41cb0c3a1e65e7880c7210d9bcd00b2fc2c4948f4de6ab"
  end

  def install
    filename = Hardware::CPU.intel? ? "mint-darwin-x86_64" : "mint-darwin-aarch64"
    bin.install filename => "mint"
  end

  test do
    system "#{bin}/mint --version"
  end
end
