class Abq < Formula
  desc "ABQ is the most efficient parallel test runner due to its queue-based distribution"
  homepage "https://www.rwx.com/abq"
  version "1.8.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=darwin&arch=x86-64", user_agent: :fake
      sha256 "252c3cf1b3488788e8bc92d57a5357a5a3f91881ce1ae6bc07e43a4515e3fb9b"
    elsif Hardware::CPU.arm?
      url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=darwin&arch=aarch64", user_agent: :fake
      sha256 "1c3c594da0e8e0584e8a2910e388ee4d79fc346e7be42bc8ef12b58ec12dacd2"
    end
  else
    if Hardware::CPU.intel?
      url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=linux&arch=x86-64", user_agent: :fake
      sha256 "426adc39545c1bd8182f71d23fab869c4c10c268d966e93e4877ea2f7092112a"
    end
  end

  def install
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
