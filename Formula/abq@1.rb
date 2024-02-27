class AbqAT1 < Formula
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
    else
      depends_on arch: [:intel, :arm64]
    end
  else
    depends_on :macos
  end

  def install
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
