class AbqAT1 < Formula
  desc "ABQ is the most efficient parallel test runner due to its queue-based distribution"
  homepage "https://www.rwx.com/abq"
  version "1.6.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=x86-64", user_agent: :fake
    sha256 "e1618b74a15340ba0503ed83b592ef6da8e2b6d39231baabb1507ad95370578c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=aarch64", user_agent: :fake
    sha256 "9bf2086f087c93e94461c12711f52bb0eb316df693367d91169aac4b5a707802"
  end

  def install
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
