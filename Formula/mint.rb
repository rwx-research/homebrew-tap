class Mint < Formula
  desc "Mint is the CI platform with the best developer experience, powering the fastest builds"
  homepage "https://www.rwx.com/mint"
  version "1.3.2"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-x86_64", user_agent: :fake
      sha256 "3b29c974dbecbfefb3a4b544fa46c54b96c021720534c211bd9549af93887c7e"
    elsif Hardware::CPU.arm?
      url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-darwin-aarch64", user_agent: :fake
      sha256 "aeae2ba94fdcc2331ec1db64e18745e774778247fad3625de366934fe39094d0"
    end
  else
    if Hardware::CPU.intel?
      url "https://github.com/rwx-research/mint-cli/releases/download/v#{version}/mint-linux-x86_64", user_agent: :fake
      sha256 "4975967ae44b060452e9353bc0d83d86249417123225d8730e6bf2ae60a95abf"
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
