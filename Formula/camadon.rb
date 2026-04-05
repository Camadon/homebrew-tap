class Camadon < Formula
  desc "Desktop relay client for the Camadon mobile IDE"
  homepage "https://camadon.ai"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coddd-io/coddd-desktop/releases/download/v#{version}/camadon-#{version}-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64_SHA256"
    elsif Hardware::CPU.intel?
      url "https://github.com/coddd-io/coddd-desktop/releases/download/v#{version}/camadon-#{version}-darwin-x86_64.tar.gz"
      sha256 "PLACEHOLDER_X86_64_SHA256"
    end
  end

  def install
    bin.install "camadon"
  end

  test do
    assert_match "Camadon Desktop", shell_output("#{bin}/camadon --version")
  end
end
