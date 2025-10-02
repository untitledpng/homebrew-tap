class EnvironmentSwitcher < Formula
  desc "CLI tool to switch between different environment configurations"
  homepage "https://github.com/untitledpng/environment-switcher"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/untitledpng/environment-switcher/releases/download/v1.4.0/switch-arm64-apple-macos.tar.gz"
      sha256 "7034f918d62385df2a593d33a96652900aed0ca987866f976442404fc50a0d0b"
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
