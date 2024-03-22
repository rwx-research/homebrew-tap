class Mint < Formula
  desc "Mint is the CI platform with the best developer experience, powering the fastest builds"
  homepage "https://www.rwx.com/mint"
  version "0.2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-x86_64", user_agent: :fake
      sha256 "0817330119df212a1034f3288bfd5fd14a19159795f1abf91b29c9725a8bb809"
    elsif Hardware::CPU.arm?
      url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-aarch64", user_agent: :fake
      sha256 "b935cc50952ca3fad30dc24f22826047efcdd186230123fcba0596ed77d3ee44"
    end
  else
    if Hardware::CPU.intel?
      url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-linux-x86_64", user_agent: :fake
      sha256 "350a407762940dc30608094624d8c0982ba6d8e1f5eabb232a5842792ab29cf5"
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
