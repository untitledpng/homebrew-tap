class EnvironmentSwitcher < Formula
  desc "CLI tool to switch between different environment configurations"
  homepage "https://github.com/untitledpng/environment-switcher"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/untitledpng/environment-switcher/releases/download/v1.5.0/switch-arm64-apple-macos.tar.gz"
      sha256 "811b566a41cf1e602769c9e72125fdd5c392c4532f246d8a11f9f670bc6a017a"
    else
      odie "This formula only supports Apple Silicon Macs"
    end
  end

  def install
    bin.install "switch"
  end

  test do
    system "#{bin}/switch", "--help"
  end
end
