require "language/node"

class AnsibleLanguageServer < Formula
  desc "Language Server for Ansible Files"
  homepage "https://github.com/ansible/ansible-language-server"
  url "https://registry.npmjs.org/@ansible/ansible-language-server/-/ansible-language-server-0.8.0.tgz"
  sha256 "7acc49fbd3840ab5b5602292fc69e90404f11c68fb6deb9eb54e2965e051022e"
  license "MIT"

  bottle do
    sha256 cellar: :any_skip_relocation, all: "0b01e6d98bd96589b21682ec58ccfc0f6b5aa633d2e0ecd05789f62511d581a4"
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    require "open3"

    json = <<~JSON
      {
        "jsonrpc": "2.0",
        "id": 1,
        "method": "initialize",
        "params": {
          "rootUri": null,
          "capabilities": {}
        }
      }
    JSON

    Open3.popen3("#{bin}/ansible-language-server", "--stdio") do |stdin, stdout|
      stdin.write "Content-Length: #{json.size}\r\n\r\n#{json}"
      sleep 3
      assert_match(/^Content-Length: \d+/i, stdout.readline)
    end
  end
end
