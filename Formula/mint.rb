class Mint < Formula
  desc "Mint is the CI platform with the best developer experience, powering the fastest builds"
  homepage "https://www.rwx.com/mint"
  version "1.6.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/rwx-cloud/cli/releases/download/v#{version}/mint-darwin-x86_64", user_agent: :fake
      sha256 "b67a062f249b35ff80ed213843f872cf3c1bc2eba4cb1c42cd2286ddcbbe1bde"
    elsif Hardware::CPU.arm?
      url "https://github.com/rwx-cloud/cli/releases/download/v#{version}/mint-darwin-aarch64", user_agent: :fake
      sha256 "d23392cfb2560631d2a8b75079b63355f6e3d67a4f956b4d145cc2e78420354d"
    end
  else
    if Hardware::CPU.intel?
      url "https://github.com/rwx-cloud/cli/releases/download/v#{version}/mint-linux-x86_64", user_agent: :fake
      sha256 "ade3b05a3bf10284a3dc040bd933e54d3bde8dbda80c1f37086164f401b105ca"
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
