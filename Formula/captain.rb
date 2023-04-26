class Captain < Formula
  desc "Captain - CI and Test Analytics"
  homepage "https://captain.build"
  version "1.11.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
    sha256 "a25fdc5fcc188d39d4b4cb779c96a4560cc5127cf42c08ff3aff86986dde0681"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
    sha256 "1d14111d8721c63e1605048140e067fde98dd565344a7f5f23cfbe112e011de9"
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
