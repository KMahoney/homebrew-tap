class Vegen < Formula
  desc "Compiler for tiny, efficient, updatable TypeScript HTML templates"
  homepage "https://github.com/KMahoney/vegen"
  url "https://github.com/KMahoney/vegen/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "c661e70115d69a4def262265357b7426ca58719f597adcc3f525d2d33639d8f8"
  license "MIT"

  bottle do
    root_url "https://github.com/KMahoney/homebrew-tap/releases/download/vegen-0.2.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "63a59f42ed8dd4df95998719b3d075b8fb3289f2825dcbdeda70ed9797531483"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a303bea80c31c3c02e43d81927f9723094fc4aadf7af8c35a09120521253c39f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end
end
