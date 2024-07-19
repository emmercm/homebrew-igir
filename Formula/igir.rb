require "language/node"

class Igir < Formula
  desc "🕹 A video game ROM collection manager to help filter, sort, patch, archive, and report on collections on any OS"
  homepage "https://igir.io/"
  url "https://registry.npmjs.org/igir/-/igir-2.10.1.tgz"
  sha256 "7424c31ba21c5f328b381c7da758997c917044080ca3d50c687693cd5ddedf96"
  license "GPL-3.0-or-later"

  livecheck do
    url :stable
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
