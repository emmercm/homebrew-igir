require "language/node"

class Igir < Formula
  desc "Zero-setup ROM collection manager that sorts, filters, extracts or archives, p"
  homepage "https://igir.io/"
  url "https://registry.npmjs.org/igir/-/igir-3.0.0.tgz"
  sha256 "0c5c8f87176695bfccaf95e211482c2e86f9f9d340d2007963f3b53d99abc141"
  license "GPL-3.0-or-later"
  head "https://github.com/emmercm/igir.git", branch: "main"

  livecheck do
    url :stable
  end

  depends_on "libdeflate" # maxcso-js
  depends_on "libuv" # maxcso-js
  depends_on "lz4" # maxcso-js
  depends_on "node@20"
  depends_on "sdl2" # chdman-js

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
