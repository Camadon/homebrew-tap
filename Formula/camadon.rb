class Camadon < Formula
  desc "Desktop relay client for the Camadon mobile IDE"
  homepage "https://camadon.ai"
  version "1.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Camadon/homebrew-tap/releases/download/v1.0.5/camadon-1.0.5-darwin-arm64.tar.gz"
      sha256 "73776ac6c67c244a348b54bbc28f31da74f11dd75ac7109151b58d6e6a210d1d"
    elsif Hardware::CPU.intel?
      url "https://github.com/Camadon/homebrew-tap/releases/download/v1.0.5/camadon-1.0.5-darwin-x86_64.tar.gz"
      sha256 "38b239b77795d59bca3f5474ab752787b98b8a26c5aba22e98160aee4c672507"
    end
  end

  def install
    bin.install "camadon"
  end

  test do
    assert_match "camadon", shell_output("#{bin}/camadon --version")
  end
end
