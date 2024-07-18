require "language/node"

class Igir < Formula
  desc "🕹 A video game ROM collection manager to help filter, sort, patch, archive, and report on collections on any OS"
  homepage "https://igir.io/"
  url "https://registry.npmjs.org/igir/-/igir-2.10.0.tgz"
  sha256 "97de96aef21e5cca7af714e0db71e8ec180026217f137569c16b1dec50ea68ec"
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
