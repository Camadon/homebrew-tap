class Camadon < Formula
  desc "Desktop relay client for the Camadon mobile IDE"
  homepage "https://camadon.ai"
  version "1.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Camadon/homebrew-tap/releases/download/v1.0.6/camadon-1.0.6-darwin-arm64.tar.gz"
      sha256 "68bc66b961fee108968870c720712c80784f2237331d68ee73745ee9d4a3dc46"
    elsif Hardware::CPU.intel?
      url "https://github.com/Camadon/homebrew-tap/releases/download/v1.0.6/camadon-1.0.6-darwin-x86_64.tar.gz"
      sha256 "137da85ed576309c5184d8895d6b4eb7a7b728332b757b157d6663079a76dca9"
    end
  end

  def install
    bin.install "camadon"
  end

  test do
    assert_match "camadon", shell_output("#{bin}/camadon --version")
  end
end
