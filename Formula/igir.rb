class Igir < Formula
  desc "Zero-setup ROM collection manager that sorts, filters, extracts or archives, p"
  homepage "https://igir.io/"
  url "https://registry.npmjs.org/igir/-/igir-5.5.0.tgz"
  sha256 "30fba67260b308fa83d71d7199b3be20ab2647a82a0dd678082ce012f3ed89f4"
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
