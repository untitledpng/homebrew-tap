class EnvironmentSwitcher < Formula
  desc "CLI tool to switch between different environment configurations"
  homepage "https://github.com/untitledpng/environment-switcher"
  url "https://github.com/untitledpng/environment-switcher/archive/v1.3.0.tar.gz"
  sha256 "95c1ac12518b4e21faf295272c00098fc20e57a27be123106b77415418da256b"
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
