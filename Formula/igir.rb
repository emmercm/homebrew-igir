require "language/node"

class Igir < Formula
  desc "🕹 A video game ROM collection manager to help filter, sort, patch, archive, and report on collections on any OS"
  homepage "https://igir.io/"
  url "https://registry.npmjs.org/igir/-/igir-2.9.0.tgz"
  sha256 "19c7ebe55208924fbe87124707af5bed3126b457d1d11f10af876bfa7e72127c"
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
