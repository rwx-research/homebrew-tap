class Mint < Formula
  desc "Mint is the CI platform with the best developer experience, powering the fastest builds"
  homepage "https://www.rwx.com/mint"
  version "0.2.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-x86_64", user_agent: :fake
      sha256 "9bc8885d9c6e55e9136a65ec741118f7b154849d2bc3c84f801b672007527fa7"
    elsif Hardware::CPU.arm?
      url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-aarch64", user_agent: :fake
      sha256 "87b841c56d7e01ae12531fd01ddc16cbd8b2281ba96e6ece493105e789148847"
    end
  else
    if Hardware::CPU.intel?
      url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-linux-x86_64", user_agent: :fake
      sha256 "6b0c3c13ccbb2212d5c86afa7f81b1e73b83fc113b6b2ad67722fb8251fa3a32"
    end
  end

  def install
    filename = case
                 when OS.mac? && Hardware::CPU.intel? then "mint-darwin-x86_64"
                 when OS.mac? && Hardware::CPU.arm? then "mint-darwin-aarch64"
                 when OS.linux? && Hardware::CPU.intel? then "mint-linux-x86_64"
               end
    bin.install filename => "mint"
  end

  test do
    system "#{bin}/mint --version"
  end
end
