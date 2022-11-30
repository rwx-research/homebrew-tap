cask "abq" do
  name "ABQ"
  desc "Always Be Queueing - Run your tests in parallel"
  homepage "https://abq.build/"
  version "1.0.1"


  depends_on macos: ">= :catalina"

  arch arm: "aarch64", intel: "x86-64"

  sha256 arm:   "9fe9ee284c241e1a6e4c69f6c02d59a53433d291f607b4e3aebbb52bed4097b2",
         intel: "31e7ad9c33127a91baa5d7ea8b11893bca551fc98c88ef1b3bd81bb608af0fa3"


  url "https://abq.build/api/downloads/v1?os=darwin&arch=#{arch}", user_agent: :fake

  binary "abq_#{version}_darwin_#{arch}/abq"
end
