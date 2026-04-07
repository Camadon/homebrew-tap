class Camadon < Formula
  desc "Desktop relay client for the Camadon mobile IDE"
  homepage "https://camadon.ai"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Camadon/homebrew-tap/releases/download/v1.0.1/camadon-1.0.1-darwin-arm64.tar.gz"
      sha256 "83a76891aca337ac0cc21e7da8c45a4d19bc4b4b7908f5eb5f5651be8259e85f"
    elsif Hardware::CPU.intel?
      url "https://github.com/Camadon/homebrew-tap/releases/download/v1.0.1/camadon-1.0.1-darwin-x86_64.tar.gz"
      sha256 "040785df59aab8835891aba8689449ef6f30653747d353b37926ed2b6031c4e6"
    end
  end

  def install
    bin.install "camadon"
  end

  test do
    assert_match "camadon", shell_output("#{bin}/camadon --version")
  end
end
