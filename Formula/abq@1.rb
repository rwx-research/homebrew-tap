class AbqAT1 < Formula
  desc "ABQ is the most efficient parallel test runner due to its queue-based distribution"
  homepage "https://www.rwx.com/abq"
  version "1.7.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=darwin&arch=x86-64", user_agent: :fake
    sha256 "544d303b33f53ffcf0552dd71f6c01d5a681dbb2bcd62ddccf490f7391bc4c26"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=darwin&arch=aarch64", user_agent: :fake
    sha256 "bd777ff0f6d4356a7618eb0f01283da54da24a62d6c466d0c4935d3334a016f4"
  end

  def install
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
