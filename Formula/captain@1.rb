class CaptainAT1 < Formula
  desc "Captain can detect and quarantine flaky tests, automatically retry failed tests, partition files for parallel execution, and more"
  homepage "https://www.rwx.com/captain"
  version "2.2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
      sha256 "6c63df006c525469d7b3989e0cd1fb1ab2550f2504e70e57f9327fc58166a3ea"
    elsif Hardware::CPU.arm?
      url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
      sha256 "201c23f9c8d31a8d80533808aae920a1b3cbf0bdcd79ef9d66daab0e639d6d13"
    end
  else
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/linux/x86_64/captain", user_agent: :fake
      sha256 "0a435c691035ec6b022353b991dd16a82e6e68fb8a68340cbad2d36293439cbb"
    end
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
