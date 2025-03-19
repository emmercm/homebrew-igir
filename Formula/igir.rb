class Igir < Formula
  desc "Zero-setup ROM collection manager that sorts, filters, extracts or archives, p"
  homepage "https://igir.io/"
  url "https://registry.npmjs.org/igir/-/igir-3.3.0.tgz"
  sha256 "a9e99f8c31c851dc61e5c5ddab15f0a797d7ab65d63ab668b7c44b3813ca1317"
  license "GPL-3.0-or-later"
  head "https://github.com/emmercm/igir.git", branch: "main"

  livecheck do
    url :stable
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
