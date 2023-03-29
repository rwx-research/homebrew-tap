class CaptainAT1 < Formula
  desc "Captain - CI and Test Analytics"
  homepage "https://captain.build"
  version "1.9.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
    sha256 "37d2c4540c3c68625ed726f615af2f94c4ac41da1f109a922eb84a0876426d4d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
    sha256 "e558b03c9fea63b8fa74001f523e3ba3c47ca6c181f628455a319ecbd694da1d"
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
