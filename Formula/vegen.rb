class Vegen < Formula
  desc "Compiler for tiny, efficient, updatable TypeScript HTML templates"
  homepage "https://github.com/KMahoney/vegen"
  url "https://github.com/KMahoney/vegen/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "e8cc412ae62c9ec1ae3732b0442d83ac5e4c8df98c68a3d2f03261c2b84f3b2d"
  license "MIT"

  bottle do
    root_url "https://github.com/KMahoney/homebrew-tap/releases/download/vegen-0.4.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "e0a816567289cd28a34de3979dd77619e16f3af6077c6d43cbcede9c0cfb9db2"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b8f6dc3be3f620ef963f8ac01760957028e417bafdbefec1c6798e9469bd1438"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end
end
