class Captain < Formula
  desc "Captain can detect and quarantine flaky tests, automatically retry failed tests, partition files for parallel execution, and more"
  homepage "https://www.rwx.com/captain"
  version "1.17.3"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
      sha256 "701ccd8ec5817e207851a8832a9626f337411a4f0f1a372e7f5584ba793d83b6"
    elsif Hardware::CPU.arm?
      url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
      sha256 "d30ec1c1ceef21af226d38358bf5b2974ce49387cf659d1d4d06e8dc093c9b7d"
    end
  else
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/linux/x86_64/captain", user_agent: :fake
      sha256 "051b749afdfb63f25b23bd31a29b5c2799b58776591916b776405cd9dfe724b6"
    end
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
