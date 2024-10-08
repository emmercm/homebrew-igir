class Igir < Formula
  desc "Zero-setup ROM collection manager that sorts, filters, extracts or archives, p"
  homepage "https://igir.io/"
  url "https://registry.npmjs.org/igir/-/igir-3.0.1.tgz"
  sha256 "b3585f1059475cf41dd23b36cfaab2edb6aa37504c19e3582ee488ea136a9c05"
  license "GPL-3.0-or-later"
  head "https://github.com/emmercm/igir.git", branch: "main"

  livecheck do
    url :stable
  end

  depends_on "libdeflate" # maxcso-js
  depends_on "libuv" # maxcso-js
  depends_on "lz4" # maxcso-js
  depends_on "node"
  depends_on "sdl2" # chdman-js

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
