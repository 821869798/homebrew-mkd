class Mkd < Formula
  desc "Cross-platform directory bookmark manager with a Rust TUI and shell integration"
  homepage "https://github.com/821869798/markd"
  url "https://github.com/821869798/markd/releases/download/v0.1.3/mkd-aarch64-apple-darwin.tar.gz"
  version "0.1.3"
  sha256 "784ee2f2d51a9474f183c77eb3d33fdf7352aea88d55f16da65f6014d6a56133"
  license "MIT"

  def install
    bin.install "mkd"
  end

  def caveats
    <<~EOS
      Run `mkd setup` to register the shell function, then open a new terminal.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mkd --version")
  end
end
