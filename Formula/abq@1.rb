class AbqAT1 < Formula
  desc "Always Be Queueing - Run your tests in parallel"
  homepage "https://abq.build"
  version "1.5.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=x86-64", user_agent: :fake
    sha256 "b16eb4e6550ca77d6156adcefd1b72af1abf29b9759e51d6799e82a0225efae4"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=aarch64", user_agent: :fake
    sha256 "7ef1dac1d4e92c6cb8bc746b38c673cc19a739bc3b5a96addd85ec198c89a3e4"
  end

  def install
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
