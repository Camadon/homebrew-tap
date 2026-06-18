class Camadon < Formula
  desc "Desktop relay client for the Camadon mobile IDE"
  homepage "https://camadon.ai"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Camadon/homebrew-tap/releases/download/v1.1.0/camadon-1.1.0-darwin-arm64.tar.gz"
      sha256 "af45ec1f022a5a42dc5b55eb0a692b2f45c40020f233e7f735b1eb734e0ee398"
    elsif Hardware::CPU.intel?
      url "https://github.com/Camadon/homebrew-tap/releases/download/v1.1.0/camadon-1.1.0-darwin-x86_64.tar.gz"
      sha256 "8be352e0973c4123d7b319c60e0b6158c88358b15d328a55e6997ce1a6c4c8b2"
    end
  end

  def install
    bin.install "camadon"
  end

  test do
    assert_match "camadon", shell_output("#{bin}/camadon --version")
  end
end
