class Abq < Formula
  desc "ABQ is the most efficient parallel test runner due to its queue-based distribution"
  homepage "https://www.rwx.com/abq"
  version "1.7.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=darwin&arch=x86-64", user_agent: :fake
    sha256 "5386947f49db857252a1a1dc6cfd0dd12a1a2826f3d79dfb68121c5af202f786"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=darwin&arch=aarch64", user_agent: :fake
    sha256 "5163cefa68b462186bd001707bb84f79b87461502dfa4b67b2dad4f018cab983"
  end

  def install
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
