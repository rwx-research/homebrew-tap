class Abq < Formula
  desc "ABQ is the most efficient parallel test runner due to its queue-based distribution"
  homepage "https://www.rwx.com/abq"
  version "1.7.4"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=darwin&arch=x86-64", user_agent: :fake
      sha256 "d76b514dc34ea7322f463b7e470e3cea0305d72a11ff81cc591aea1ddbb20e70"
    elsif Hardware::CPU.arm?
      url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=darwin&arch=aarch64", user_agent: :fake
      sha256 "818d48e9cdae3e88718affbafaa34cd0a474beea097c7ce0e5fdba5e3fa2a1ed"
    end
  else
    if Hardware::CPU.intel?
      url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=linux&arch=x86-64", user_agent: :fake
      sha256 "9c64213c07b54cdc526fc436389b77d31a72be9fdb6a58d9a893c11a9c4c55e4"
    end
  end

  def install
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
