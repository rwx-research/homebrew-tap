class AbqAT1 < Formula
  desc "ABQ is the most efficient parallel test runner due to its queue-based distribution"
  homepage "https://www.rwx.com/abq"
  version "1.8.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=darwin&arch=x86-64", user_agent: :fake
      sha256 "1fdd648a6ff963d393341f2a68beb6192c602a6bc0f280a33ac21e7d86870e8f"
    elsif Hardware::CPU.arm?
      url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=darwin&arch=aarch64", user_agent: :fake
      sha256 "f5471070dd1ffd895f2baccef78783f2e871475eff5e6b57a56e472d4a869465"
    end
  else
    if Hardware::CPU.intel?
      url "https://cloud.rwx.com/abq/api/downloads/#{version}?os=linux&arch=x86-64", user_agent: :fake
      sha256 "e2ee968bc56b95c538ef33f0150f874b9c1efc93afc26da0efaf1ad85c77c53d"
    end
  end

  def install
    bin.install "abq"
  end

  test do
    system "#{bin}/abq --version"
  end
end
