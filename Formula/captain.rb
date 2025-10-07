class Captain < Formula
  desc "Captain can detect and quarantine flaky tests, automatically retry failed tests, partition files for parallel execution, and more"
  homepage "https://www.rwx.com/captain"
  version "2.5.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
      sha256 "5762d9ed3bdcbc5f7d67f526b182149c1a9dfa6c55b3d1e9084eeac2c067eac6"
    elsif Hardware::CPU.arm?
      url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
      sha256 "7b9aab8d0ede61f01fe01f5ac9c46e5d7a7ea0da5ba995228a96ecf00f66b0fb"
    end
  else
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/linux/x86_64/captain", user_agent: :fake
      sha256 "afa3f4fdf2fa976a06e4870ac96f4ecdb1df190f011b2924e2ead5e9ff618420"
    end
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
