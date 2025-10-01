class EnvironmentSwitcher < Formula
  desc "CLI tool to switch between different environment configurations"
  homepage "https://github.com/untitledpng/environment-switcher"
  url "https://github.com/untitledpng/environment-switcher/archive/v1.1.0.tar.gz"
  sha256 "fb291c01b902d59b7b9a7ca712439703de65f5755b30366657b6a270ee4583cb"
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
