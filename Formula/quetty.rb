class Quetty < Formula
  desc "Terminal-based Azure Service Bus queue manager (Alpha)"
  homepage "https://github.com/dawidpereira/quetty"
  url "https://github.com/dawidpereira/quetty/archive/refs/tags/v0.1.0-alpha.1.tar.gz"
  sha256 "c041d4dd9404a41e1d5b3f289d393bda454ce592604674839bfcff3eafaa5c2d"
  license "MIT"
  head "https://github.com/dawidpereira/quetty.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/quetty"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quetty --version")
  end
end