class AbqAT1 < Formula
  desc "Always Be Queueing - Run your tests in parallel"
  homepage "https://abq.build/"
  version "1.0.8"

  if OS.mac? && Hardware::CPU.intel?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=x86-64", user_agent: :fake
    sha256 "90017cfb8790fc6f54c17605979d894a742bc7f298e43b7c073b7076b03274bb"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=aarch64", user_agent: :fake
    sha256 "4be229c818ae7b0b69655d47773b112b44e73dc4ddbafb99e2b68ec3a8d03ac5"
  end

  def install
    arch = Hardware::CPU.intel? ? "x86-64" : "aarch64"
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
