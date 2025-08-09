class Quetty < Formula
  desc "Terminal-based Azure Service Bus queue manager"
  homepage "https://github.com/dawidpereira/quetty"
  url "https://github.com/dawidpereira/quetty/archive/refs/tags/v0.1.9.tar.gz"
  sha256 "129c9980efa09d831c5ae340b7c8cebbb0b891af87bc6718cd023259070f3a08"
  license "MIT"
  head "https://github.com/dawidpereira/quetty.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quetty --version")
  end
end
