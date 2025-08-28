class CaptainAT1 < Formula
  desc "Captain can detect and quarantine flaky tests, automatically retry failed tests, partition files for parallel execution, and more"
  homepage "https://www.rwx.com/captain"
  version "2.3.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
      sha256 "29b37635e9bb41ab8a3ee032b9702632fb83585c4c7456a5afeb1b12c0423922"
    elsif Hardware::CPU.arm?
      url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
      sha256 "230716899ad76573eb41dc4245039ca8b0864c161d605ffd2859ba21c5fc58a4"
    end
  else
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/linux/x86_64/captain", user_agent: :fake
      sha256 "ddbc00bf8acb42beb9c36e10274d00d60ca8a33770adfd71e5bb6106ceb9986e"
    end
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
