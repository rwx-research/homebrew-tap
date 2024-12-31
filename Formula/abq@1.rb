class AbqAT1 < Formula
  desc "ABQ is the most efficient parallel test runner due to its queue-based distribution"
  homepage "https://www.rwx.com/abq"
  version "1.9.2"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=darwin&arch=x86-64", user_agent: :fake
      sha256 "e719870a610733251bf68573baae2e68cab5e93d51dd9e0824494e88466d00cb"
    elsif Hardware::CPU.arm?
      url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=darwin&arch=aarch64", user_agent: :fake
      sha256 "aef5e6fb3d38566cc95d45925a3220e07fc6d8ea7413b055af70a5c33b30f91a"
    end
  else
    if Hardware::CPU.intel?
      url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=linux&arch=x86-64", user_agent: :fake
      sha256 "6927119baf463120c497bb41006a9d3dd4416231d7b35483c73a0e46ace8cfe5"
    end
  end

  def install
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
