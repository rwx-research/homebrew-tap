class Abq < Formula
  desc "Always Be Queueing - Run your tests in parallel"
  homepage "https://abq.build/"
  version "1.0.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=x86-64", user_agent: :fake
    sha256 "31e7ad9c33127a91baa5d7ea8b11893bca551fc98c88ef1b3bd81bb608af0fa3"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=aarch64", user_agent: :fake
    sha256 "9fe9ee284c241e1a6e4c69f6c02d59a53433d291f607b4e3aebbb52bed4097b2"
  end

  def install
    arch = Hardware::CPU.intel? ? "x86-64" : "aarch64"
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
