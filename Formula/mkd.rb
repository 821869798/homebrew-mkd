class Mkd < Formula
  desc "Cross-platform directory bookmark manager with a Rust TUI and shell integration"
  homepage "https://github.com/821869798/markd"
  url "https://github.com/821869798/markd/releases/download/v0.1.2/mkd-aarch64-apple-darwin.tar.gz"
  version "0.1.2"
  sha256 "c6d99132a87bea488a3923758cffd33bc01e841dd94a1935728ca0b4fb9e807b"
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
