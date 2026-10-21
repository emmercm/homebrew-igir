class Igir < Formula
  desc "Zero-setup ROM collection manager that sorts, filters, extracts or archives, p"
  homepage "https://igir.io/"
  url "https://registry.npmjs.org/igir/-/igir-5.8.0.tgz"
  sha256 "0d02caa8fb5ec898a0748deeee209f25001bbe98db55f730a2accd5f86caf22e"
  license "GPL-3.0-or-later"
  head "https://github.com/emmercm/igir.git", branch: "main"

  livecheck do
    url :stable
  end

  depends_on "python@3" => :build
  depends_on "node"

  def install
    system "npm", "install", "--omit", "dev", *std_npm_args(ignore_scripts: false)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
