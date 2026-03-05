class EnvironmentSwitcher < Formula
  desc "CLI tool to switch between different environment configurations"
  homepage "https://github.com/untitledpng/environment-switcher"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/untitledpng/environment-switcher/releases/download/v2.2.0/switch-arm64-apple-macos.tar.gz"
      sha256 "bf7b99010e060ff9fe06a94ab732d8f87c083c02bc4c2158dfd11aef6e5a4639"
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
