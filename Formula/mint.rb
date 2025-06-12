class Mint < Formula
  desc "Mint is the CI platform with the best developer experience, powering the fastest builds"
  homepage "https://www.rwx.com/mint"
  version "1.6.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/rwx-cloud/cli/releases/download/v#{version}/mint-darwin-x86_64", user_agent: :fake
      sha256 "e0918897a95a6fa09151d99df0db45ead5a06ec5081e42f88f0867f7e13acb51"
    elsif Hardware::CPU.arm?
      url "https://github.com/rwx-cloud/cli/releases/download/v#{version}/mint-darwin-aarch64", user_agent: :fake
      sha256 "97cbd53dce4d63ff06331a390844b346b6470404d4e5aa09f8c3c01f9725b21b"
    end
  else
    if Hardware::CPU.intel?
      url "https://github.com/rwx-cloud/cli/releases/download/v#{version}/mint-linux-x86_64", user_agent: :fake
      sha256 "958ca3e6b4bccb050574312d821c3e041540024ca98e6aa6397caaecd2d1bfb1"
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
