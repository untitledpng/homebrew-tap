class EnvironmentSwitcher < Formula
  desc "CLI tool to switch between different environment configurations"
  homepage "https://github.com/untitledpng/environment-switcher"
  url "https://github.com/untitledpng/environment-switcher/archive/v1.0.0.tar.gz"
  sha256 "74bb1c33d35b00ed79df1bc63a3ceb15661418ea5a97fb64c78a31ae426eb45c"
  license "MIT"

  depends_on :macos
  depends_on xcode: ["12.0", :build]

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/switch"
  end

  test do
    system "#{bin}/switch", "--help"
  end
end
