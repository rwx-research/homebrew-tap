class CaptainAT1 < Formula
  desc "Captain can detect and quarantine flaky tests, automatically retry failed tests, partition files for parallel execution, and more"
  homepage "https://www.rwx.com/captain"
  version "2.0.3"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
      sha256 "99d1fdf3905da3deabbb29e4cf7842e5e49599eeda71f5c6f61a05e518ded308"
    elsif Hardware::CPU.arm?
      url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
      sha256 "6d8090c18b1c9856308d7020e81c6fcc6c5129e4f76b2ce671b1fb40740c0f1c"
    end
  else
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/linux/x86_64/captain", user_agent: :fake
      sha256 "6f55f85e63b140e7c513676f031f12ce995e60542ee6ff090936267d6cbaa85a"
    end
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
