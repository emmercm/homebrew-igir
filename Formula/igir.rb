require "language/node"

class Igir < Formula
  desc "🕹 A video game ROM collection manager to help filter, sort, patch, archive, and report on collections on any OS"
  homepage "https://igir.io/"
  url "https://registry.npmjs.org/igir/-/igir-2.9.1.tgz"
  sha256 "6f83b3d05409288772ab3a8d7c116066ad85fb9c52fad1ad716c9889f70fa371"
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
