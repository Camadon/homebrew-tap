class Camadon < Formula
  desc "Desktop relay client for the Camadon mobile IDE"
  homepage "https://camadon.ai"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Camadon/homebrew-tap/releases/download/v1.0.2/camadon-1.0.2-darwin-arm64.tar.gz"
      sha256 "b45be869d8feb1be2a8b51bda04a412460ec3c01d192ab7a0ddcd1d76d7130eb"
    elsif Hardware::CPU.intel?
      url "https://github.com/Camadon/homebrew-tap/releases/download/v1.0.2/camadon-1.0.2-darwin-x86_64.tar.gz"
      sha256 "ae995a8b50304fa379968c12c61665f8c6482162298390577fedad351d2af569"
    end
  end

  def install
    bin.install "camadon"
  end

  test do
    assert_match "camadon", shell_output("#{bin}/camadon --version")
  end
end
