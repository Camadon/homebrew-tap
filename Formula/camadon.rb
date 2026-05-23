class Camadon < Formula
  desc "Desktop relay client for the Camadon mobile IDE"
  homepage "https://camadon.ai"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Camadon/homebrew-tap/releases/download/v1.0.3/camadon-1.0.3-darwin-arm64.tar.gz"
      sha256 "3af23960c136ccd0542be6995c34575537246364a7596d4f12682b0a5dbb4ed8"
    elsif Hardware::CPU.intel?
      url "https://github.com/Camadon/homebrew-tap/releases/download/v1.0.3/camadon-1.0.3-darwin-x86_64.tar.gz"
      sha256 "7b42f72c0d452682fecc988e0b664e6cdadc20ac005800f34bc4bb96db74944d"
    end
  end

  def install
    bin.install "camadon"
  end

  test do
    assert_match "camadon", shell_output("#{bin}/camadon --version")
  end
end
