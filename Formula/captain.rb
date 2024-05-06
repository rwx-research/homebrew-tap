class Captain < Formula
  desc "Captain can detect and quarantine flaky tests, automatically retry failed tests, partition files for parallel execution, and more"
  homepage "https://www.rwx.com/captain"
  version "1.13.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
      sha256 "a1774601027ace749eee7485f220f2dfd9775fcb8cb6ae0582ac69a0c20555d2"
    elsif Hardware::CPU.arm?
      url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
      sha256 "451e0031cecc108e40f3a1d5bbdacd84dc61646adb538a183f032a7b889267f2"
    end
  else
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/linux/x86_64/captain", user_agent: :fake
      sha256 "cbd0f38b4af5b8ebb000d196d281bbd80550581e13a1cb723147a7b4fc8cf600"
    end
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
