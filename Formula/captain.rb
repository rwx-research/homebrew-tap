class Captain < Formula
  desc "Captain - CI and Test Analytics"
  homepage "https://captain.build/"
  version "1.5.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
    sha256 "0a7ced03d707a0fcb62bf3578121263143b51c459a832395d719f0e1637bee3c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
    sha256 "d68d211519507c19625c718e2acc7b67783087bf6fe369976ffd6ffe612ab60b"
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
