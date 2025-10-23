class Vegen < Formula
  desc "Compiler for tiny, efficient, updatable TypeScript HTML templates"
  homepage "https://github.com/KMahoney/vegen"
  url "https://github.com/KMahoney/vegen/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "89f8ab097066301f8a8e11b76c5663dc9e3f829c4ecb44d32e5a9a2d8b08405e"
  license "MIT"

  bottle do
    root_url "https://github.com/KMahoney/homebrew-tap/releases/download/vegen-0.5.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "499eb43f8e3073b103e6aeaa80aa9c713d078d95d6d35915f085c22c6f9f6281"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d3e24768959400814cd14906538eb5bc1f7269d86327ea8d5dd4445cae5d4dc0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end
end
