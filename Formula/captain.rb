class Captain < Formula
  desc "Captain can detect and quarantine flaky tests, automatically retry failed tests, partition files for parallel execution, and more"
  homepage "https://www.rwx.com/captain"
  version "2.7.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
      sha256 "48a24bab6479d3295aa1a156fa93bb42c19d3fb5736d4a139c895a4abb6ae2da"
    elsif Hardware::CPU.arm?
      url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
      sha256 "725b57f7ace2a2d7c6258c682354308327b245f2d21d4578c7ce6ece3686f26f"
    end
  else
    if Hardware::CPU.intel?
      url "https://releases.captain.build/v#{version}/linux/x86_64/captain", user_agent: :fake
      sha256 "6539970f769a7b5d2a95531e5c3b8359e17846dd1c1e82e135b2134509da4e6a"
    end
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
