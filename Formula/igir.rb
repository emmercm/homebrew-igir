class Igir < Formula
  desc "Zero-setup ROM collection manager that sorts, filters, extracts or archives, p"
  homepage "https://igir.io/"
  url "https://registry.npmjs.org/igir/-/igir-5.7.0.tgz"
  sha256 "d60b4ff0f6ddd9d8a92826c711d374d94a6459d8eae1ab4c6ee32aaaadf89f2e"
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
