class Captain < Formula
  desc "Captain - CI and Test Analytics"
  homepage "https://captain.build"
  version "1.11.5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
    sha256 "12620a49e34de88e086eeba4cbb8416a3edc9ceab7cf204c9fe186804d6fc341"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
    sha256 "462680b905e7788bd24e9ab39f841e2351e6abd04991b85bd711888a6e45a303"
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
