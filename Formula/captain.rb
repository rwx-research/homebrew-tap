class Captain < Formula
  desc "Captain - CI and Test Analytics"
  homepage "https://captain.build"
  version "1.10.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
    sha256 "3a2b028a04ea9fe81dbaabbbe0d4a0669197914cfa3826a4cd4c219c71c14c5e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
    sha256 "d2c322db7e773ed30acca193bdee399bdd37b2b6319af07e1ea9929f3ce0f698"
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
