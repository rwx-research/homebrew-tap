class CaptainAT1 < Formula
  desc "Captain can detect and quarantine flaky tests, automatically retry failed tests, partition files for parallel execution, and more"
  homepage "https://www.rwx.com/captain"
  version "1.17.5"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
      sha256 "8bb85e5cba751fe8cdca591bb48dbffa9aac3c2aff00cc8111a8ffa847955a90"
    elsif Hardware::CPU.arm?
      url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
      sha256 "63f9bf8b3d5203aca0e35f537e8a5323ca9b29f15fdbd4cbdb237ca2d9661e5b"
    end
  else
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/linux/x86_64/captain", user_agent: :fake
      sha256 "5cf2af6473ad3d1f586a237d3fa940f7b5c97a8a91851ceedb899269120faba1"
    end
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
