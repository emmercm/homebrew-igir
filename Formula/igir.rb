require "language/node"

class Igir < Formula
  desc "🕹 A video game ROM collection manager to help filter, sort, patch, archive, and report on collections on any OS"
  homepage "https://igir.io/"
  url "https://registry.npmjs.org/igir/-/igir-2.11.0.tgz"
  sha256 "90af9d96c169b02b1fd1992c4655e81f8238d46f27d79bcb8f353eba2bfd2741"
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
