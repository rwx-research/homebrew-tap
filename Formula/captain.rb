class Captain < Formula
  desc "Captain - CI and Test Analytics"
  homepage "https://captain.build"
  version "1.11.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
    sha256 "9c76b0ac3203d393b1f5e533cf7c0e85c2ebd59f3eee91cf043ca53ccf4d6ba5"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
    sha256 "d32ebc3d2801320d4e850f64e1c61dc1800043b17b57551caae3d6c8b115dd43"
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
