class Mint < Formula
  desc "Mint is the CI platform with the best developer experience, powering the fastest builds"
  homepage "https://www.rwx.com/mint"
  version "1.0.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-x86_64", user_agent: :fake
      sha256 "03d6a5f68f4f36a68e27ea3d57b57d05c49eb6669abb9e93dc12c9eac59b3cee"
    elsif Hardware::CPU.arm?
      url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-aarch64", user_agent: :fake
      sha256 "f05ba3bf4a26cfc56784447c271b27be0afff880fd21574843b0ab6cb99481a9"
    end
  else
    if Hardware::CPU.intel?
      url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-linux-x86_64", user_agent: :fake
      sha256 "b8cee4ce07fafd866470db6a8815e0d2b2677d6065d0305e3a3f1fc617e0d4d5"
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
