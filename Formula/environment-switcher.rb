class EnvironmentSwitcher < Formula
  desc "CLI tool to switch between different environment configurations"
  homepage "https://github.com/untitledpng/environment-switcher"
  url "https://github.com/untitledpng/environment-switcher/archive/v1.0.1.tar.gz"
  sha256 "ca527bd88cc24c8c111364950029506df06937fc8ca1f183055fb6c17cb05634"
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
