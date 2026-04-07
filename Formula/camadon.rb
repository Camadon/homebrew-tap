class Camadon < Formula
  desc "Desktop relay client for the Camadon mobile IDE"
  homepage "https://camadon.ai"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Camadon/homebrew-tap/releases/download/v1.0.0/camadon-1.0.0-darwin-arm64.tar.gz"
      sha256 "92139d0a257d8cc6705ac902ab6c222e787084a5bbc758b6d5c0dfe4143d5aca"
    elsif Hardware::CPU.intel?
      url "https://github.com/Camadon/homebrew-tap/releases/download/v1.0.0/camadon-1.0.0-darwin-x86_64.tar.gz"
      sha256 "e667b647654752d8d7ed02fc59213fb6ebff4b2c0dd43ade6093e15f047fd55d"
    end
  end

  def install
    bin.install "camadon"
  end

  test do
    assert_match "camadon", shell_output("#{bin}/camadon --version")
  end
end
