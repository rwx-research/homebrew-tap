class Captain < Formula
  desc "Captain can detect and quarantine flaky tests, automatically retry failed tests, partition files for parallel execution, and more"
  homepage "https://www.rwx.com/captain"
  version "2.0.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
      sha256 "a704e1c8ea74bc9f4057c417e3f5b9a894bc2ad3dbbd6cd8b57692fe6393a692"
    elsif Hardware::CPU.arm?
      url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
      sha256 "22c4f58ec72310dc17478901bad0355f79350cc816f65186e3eef21453b5eb27"
    end
  else
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/linux/x86_64/captain", user_agent: :fake
      sha256 "657c438c5aebed795cde28c6909d8c645f4c8d1d1db568c0515aa96917a375ba"
    end
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
