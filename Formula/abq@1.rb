class AbqAT1 < Formula
  desc "Always Be Queueing - Run your tests in parallel"
  homepage "https://abq.build/"
  version "1.0.9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=x86-64", user_agent: :fake
    sha256 "db2ec1cb61b50aac5682cd2fa08ea43f5b346ddee80c12122974cd2c684689af"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=aarch64", user_agent: :fake
    sha256 "d6b7d75a17d5e6f9c9cc5450695b63872cdb4d28c2035ca71b6dc94631c31661"
  end

  def install
    arch = Hardware::CPU.intel? ? "x86-64" : "aarch64"
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
