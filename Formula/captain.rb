class Captain < Formula
  desc "Captain - CI and Test Analytics"
  homepage "https://captain.build/"
  version "1.5.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.captain.build/v#{version}/darwin/x86_64/captain", user_agent: :fake
    sha256 "387839919691c397509b29f8425cbe257992b477e619c93c9a6aad2d9a590f33"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.captain.build/v#{version}/darwin/aarch64/captain", user_agent: :fake
    sha256 "b8073e4430d9799bf8e6901f420350d5e1b730ce062ba17fa018946c92c8a1be"
  end

  def install
    bin.install "captain"
  end

  test do
    system "#{bin}/captain --version"
  end
end
