class Sb < Formula
  desc "TUI for managing terminal sessions in a sidebar"
  homepage "https://github.com/ftl-tools/sidebar_tui"
  version "0.1.13"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/ftl-tools/sidebar_tui/releases/download/v0.1.13/sb-v0.1.13-aarch64-apple-darwin.tar.gz"
      sha256 "26eee3a40e8b80b42b430522b0b6e12324deb02407e37f5f27c268772d417728"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ftl-tools/sidebar_tui/releases/download/v0.1.13/sb-v0.1.13-x86_64-apple-darwin.tar.gz"
      sha256 "f7778109defd57c281e728e034b726c14ff1501649fb9cfdc79c8f9dcc890808"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/ftl-tools/sidebar_tui/releases/download/v0.1.13/sb-v0.1.13-aarch64-unknown-linux-musl.tar.gz"
      sha256 "13a6f2bfd6890509b671885e86e5f32f1319b9459bdd584249b33949f60df0da"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ftl-tools/sidebar_tui/releases/download/v0.1.13/sb-v0.1.13-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9edba77f38be44abb3860c482a7a118b90469dee9ee7de45b8f7ee60768d076d"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb --version")
  end
end
