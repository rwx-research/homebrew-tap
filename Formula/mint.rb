class Mint < Formula
  desc "Mint is the CI platform with the best developer experience, powering the fastest builds"
  homepage "https://www.rwx.com/mint"
  version "0.0.9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-x86_64", user_agent: :fake
    sha256 "b203536ff6521f9fffbbf012d994ee4facdf3ccbde6f13fd587a50901792391e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-aarch64", user_agent: :fake
    sha256 "a39fa4b17c9135862ae6494876ca24a09b5a81fc9ddad62bb311696fbd8f4e7e"
  end

  def install
    filename = Hardware::CPU.intel? ? "mint-darwin-x86_64" : "mint-darwin-aarch64"
    bin.install filename => "mint"
  end

  test do
    system "#{bin}/mint --version"
  end
end
