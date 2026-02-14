class Igir < Formula
  desc "Zero-setup ROM collection manager that sorts, filters, extracts or archives, p"
  homepage "https://igir.io/"
  url "https://registry.npmjs.org/igir/-/igir-4.3.0.tgz"
  sha256 "2292f2e725631a2feff2d1e585a0754a28ca8dbd13c1956e047c5c20cdc7dfd6"
  license "GPL-3.0-or-later"
  head "https://github.com/emmercm/igir.git", branch: "main"

  livecheck do
    url :stable
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
