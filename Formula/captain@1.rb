class CaptainAT1 < Formula
  desc "Captain - CI and Test Analytics"
  homepage "https://captain.build"
  version "1.11.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
    sha256 "f364dea262c1e420af094493dde2bd698031fe7508ab632cf2bcaab288420329"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
    sha256 "54d60c09f30fdb6296759d7bca9c01936ab939e175a97ae67fad54703de688b8"
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
