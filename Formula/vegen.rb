class Vegen < Formula
  desc "Compiler for tiny, efficient, updatable TypeScript HTML templates"
  homepage "https://github.com/KMahoney/vegen"
  url "https://github.com/KMahoney/vegen/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "c661e70115d69a4def262265357b7426ca58719f597adcc3f525d2d33639d8f8"
  license "MIT"

  bottle do
    root_url "https://github.com/KMahoney/homebrew-tap/releases/download/vegen-0.3.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "0898a3a5248948f3c35a60edd32805fcc58ef783bac7468591f48bc9a45a42a4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "dadd05c896e85b1c90c6a312560a419613d9165650744410227e3e76c359b2c8"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end
end
