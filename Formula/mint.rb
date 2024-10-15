class Mint < Formula
  desc "Mint is the CI platform with the best developer experience, powering the fastest builds"
  homepage "https://www.rwx.com/mint"
  version "1.3.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-x86_64", user_agent: :fake
      sha256 "374e922307b22c96b693f09481992d5fe708e5af3f1bbde3193ae1635c0788cf"
    elsif Hardware::CPU.arm?
      url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-aarch64", user_agent: :fake
      sha256 "00581a81cbd5399231f08f6696ac596505efb827fbbf157ddb6d32d50ab8c62d"
    end
  else
    if Hardware::CPU.intel?
      url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-linux-x86_64", user_agent: :fake
      sha256 "bfb1649b67c2a247f877b1d5b3bc0aeed10548ba7d0b6671d657bffa6f7fe707"
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
