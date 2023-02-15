class AbqAT1 < Formula
  desc "Always Be Queueing - Run your tests in parallel"
  homepage "https://abq.build/"
  version "1.1.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=x86-64", user_agent: :fake
    sha256 "03875955b3dc1903da6bac9b271520fb13b71525480d4586331bd35d7aa345e5"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=aarch64", user_agent: :fake
    sha256 "cce2216c43e4a1fa79adf6dcc55ef7171711b5da0cb37a28f632b29a3a059fd5"
  end

  def install
    arch = Hardware::CPU.intel? ? "x86-64" : "aarch64"
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
