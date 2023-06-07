class AbqAT1 < Formula
  desc "Always Be Queueing - Run your tests in parallel"
  homepage "https://abq.build"
  version "1.5.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=x86-64", user_agent: :fake
    sha256 "32000f5989c2d7a6a3092628709d246ac76cdaf7756cc10347aeb7102d440016"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=aarch64", user_agent: :fake
    sha256 "fef0c14e2117ae9f78531877c6eb3a077094cbdf2fd00488de8279cb3722c279"
  end

  def install
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
