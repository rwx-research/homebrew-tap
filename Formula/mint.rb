class Mint < Formula
  desc "Mint is the CI platform with the best developer experience, powering the fastest builds"
  homepage "https://www.rwx.com/mint"
  version "0.0.11"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-x86_64", user_agent: :fake
    sha256 "1a29f16b05d00a6d825c93b8101a2d9a3b56d92a4243a68366ac148cd0541cb9"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-aarch64", user_agent: :fake
    sha256 "50a11d064c598b057d3b587e14699f372abb4a6c9f530ffed855f446fbf53bd9"
  end

  def install
    filename = Hardware::CPU.intel? ? "mint-darwin-x86_64" : "mint-darwin-aarch64"
    bin.install filename => "mint"
  end

  test do
    system "#{bin}/mint --version"
  end
end
