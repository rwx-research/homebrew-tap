class CaptainAT1 < Formula
  desc "Captain - CI and Test Analytics"
  homepage "https://captain.build"
  version "1.10.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
    sha256 "dc3977ef43463978aa2321a5dd8cc64009fe43da50d719a1004effc48e480732"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
    sha256 "cb7093d4c8f10fce6f42922d17ce34e53569f4446c88e7acc8ef0893cd88ff1c"
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
