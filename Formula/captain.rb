class Captain < Formula
  desc "Captain - CI and Test Analytics"
  homepage "https://captain.build"
  version "1.11.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
    sha256 "dc8e6b4d44896ea8b8b3d164445ef7c13e24b76428de6b01195aa2cac217850b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
    sha256 "2eeb108b344a785ff19c395668ca2a0af0c3ec2b82dacaeb2740483d17d09350"
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
