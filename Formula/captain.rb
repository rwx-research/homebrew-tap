class Captain < Formula
  desc "Captain - CI and Test Analytics"
  homepage "https://captain.build/"
  version "1.7.6"

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
    sha256 "255aa7383c81a41d95656e2d6c87c99f4ecf85f74fd6dbf8b23a3af4f8c7a5f8"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
    sha256 "b8cadab297b46bf56a7175d15573abc62e3ed71c3935b98c8ed2e6d6b6e9483b"
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
