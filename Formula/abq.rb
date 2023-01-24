class Abq < Formula
  desc "Always Be Queueing - Run your tests in parallel"
  homepage "https://abq.build/"
  version "1.0.6"

  if OS.mac? && Hardware::CPU.intel?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=x86-64", user_agent: :fake
    sha256 "1623684aca943b9fe5974d0f0938504ff085fc739729391d48b542848c3e6e65"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://abq.build/api/downloads/#{version}?os=darwin&arch=aarch64", user_agent: :fake
    sha256 "f75e1001304eb1584e7be26328885d6797f20b0fe2f9121da3fa694af194df4e"
  end

  def install
    arch = Hardware::CPU.intel? ? "x86-64" : "aarch64"
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
