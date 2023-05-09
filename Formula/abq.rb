class Abq < Formula
  desc "Always Be Queueing - Run your tests in parallel"
  homepage "https://abq.build"
  version "1.4.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=x86-64", user_agent: :fake
    sha256 "eecc41dcb1b4f1215275b475fb5463ab3d20055281f38a9e951b2409fd917a01"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=aarch64", user_agent: :fake
    sha256 "83a4b6027705aa38a82c00a8c1f33a86dd8c32a9e08b5a20ad7bc0a4513c2523"
  end

  def install
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
