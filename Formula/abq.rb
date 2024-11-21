class Abq < Formula
  desc "ABQ is the most efficient parallel test runner due to its queue-based distribution"
  homepage "https://www.rwx.com/abq"
  version "1.9.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=darwin&arch=x86-64", user_agent: :fake
      sha256 "c83e9cced9e0ff55ee53761b8bdfb11f91e1e5863ca282b616efdcb6f0e58c58"
    elsif Hardware::CPU.arm?
      url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=darwin&arch=aarch64", user_agent: :fake
      sha256 "d3a05f6025f7d245c4484c7a4bed8b45018a570db4f8630ae96d714a2bf63702"
    end
  else
    if Hardware::CPU.intel?
      url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=linux&arch=x86-64", user_agent: :fake
      sha256 "08a7d56b9856264771bb4fa4841b28ec185a29c828d72478452b4ac5e56249e9"
    end
  end

  def install
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
