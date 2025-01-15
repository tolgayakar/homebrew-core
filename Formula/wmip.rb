class Wmip < Formula
  desc "A lightweight CLI tool to fetch your public IP address"
  homepage "https://github.com/tolgayakar/wmip"
  url "https://github.com/tolgayakar/wmip/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "3fd3ba770ea09117368b79295bf55d53e5fd90bdb86ebf71403447452599078d"
  license "MIT"
  
  depends_on :macos
  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"wmip", "./cmd/main.go"
  end

  test do
    system "#{bin}/wmip", "--version"
  end
end
