class CaptainAT1 < Formula
  desc "Captain - CI and Test Analytics"
  homepage "https://captain.build/"
  version "1.6.5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
    sha256 "37697cef1fce1dd31f13f98c03d4ca14088ca512d4149844a18e9065c18d1053"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
    sha256 "5ddc0f9282078f669834201851e8923828265803364269eb4f931ee144d441bd"
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
