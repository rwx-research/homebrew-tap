class CaptainAT1 < Formula
  desc "Captain - CI and Test Analytics"
  homepage "https://captain.build/"
  version "1.6.9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
    sha256 "19497726f50defd73be0bf1ad544791bbacb36020d39ace0aff32318d4d6939b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
    sha256 "7bc948cce998d0f842d7e02283edfb94a4bf91919037d880490c3be2d7b85e97"
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
