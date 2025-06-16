class Mint < Formula
  desc "Mint is the CI platform with the best developer experience, powering the fastest builds"
  homepage "https://www.rwx.com/mint"
  version "1.7.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/rwx-cloud/cli/releases/download/v#{version}/mint-darwin-x86_64", user_agent: :fake
      sha256 "8d70c42c96d70d1000515a120421ca818dc5e80eb40e738cd8f6fd13f887743a"
    elsif Hardware::CPU.arm?
      url "https://github.com/rwx-cloud/cli/releases/download/v#{version}/mint-darwin-aarch64", user_agent: :fake
      sha256 "9ed0ca65bd34196ca198c07a2f926e43c34651773efca780c402526d6488df42"
    end
  else
    if Hardware::CPU.intel?
      url "https://github.com/rwx-cloud/cli/releases/download/v#{version}/mint-linux-x86_64", user_agent: :fake
      sha256 "1e097a8d68ab03e4324d311ba15a5ff69feed54fa5eda7e8fdbc205766451b7f"
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
