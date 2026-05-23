class Camadon < Formula
  desc "Desktop relay client for the Camadon mobile IDE"
  homepage "https://camadon.ai"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Camadon/homebrew-tap/releases/download/v1.0.4/camadon-1.0.4-darwin-arm64.tar.gz"
      sha256 "0d45532fffd298ef32e9c5308a9dbc9fe70d62bad8bc21313bb889d217a585ed"
    elsif Hardware::CPU.intel?
      url "https://github.com/Camadon/homebrew-tap/releases/download/v1.0.4/camadon-1.0.4-darwin-x86_64.tar.gz"
      sha256 "72a985925e903874f95c2dee3b21fc3b886a5b728a499413153375a97d3c6ea6"
    end
  end

  def install
    bin.install "camadon"
  end

  test do
    assert_match "camadon", shell_output("#{bin}/camadon --version")
  end
end
