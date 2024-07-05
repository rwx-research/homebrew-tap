class Captain < Formula
  desc "Captain can detect and quarantine flaky tests, automatically retry failed tests, partition files for parallel execution, and more"
  homepage "https://www.rwx.com/captain"
  version "1.13.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
      sha256 "2c377ff6019ce251aecd9d0ad3cd4b44ff6cf79d451220470a881420b3cfe377"
    elsif Hardware::CPU.arm?
      url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
      sha256 "bf7bb95979277c40efea57db47d9abc8f538f5847d9cac74dd212db73331e347"
    end
  else
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/linux/x86_64/captain", user_agent: :fake
      sha256 "ea85bc9d9fef2bc8c0294ec475177ef0e2cccd3cf6b53c04aad374fa2fdc4c13"
    end
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
