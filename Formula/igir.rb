class Igir < Formula
  desc "Zero-setup ROM collection manager that sorts, filters, extracts or archives, p"
  homepage "https://igir.io/"
  url "https://registry.npmjs.org/igir/-/igir-3.0.2.tgz"
  sha256 "2fbf1d4b6340d9090cdaecb209bde18346f5cc497886db2c7d491fb33543901c"
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
