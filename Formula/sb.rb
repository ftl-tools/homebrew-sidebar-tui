class Sb < Formula
  desc "TUI for managing terminal sessions in a sidebar"
  homepage "https://github.com/ftl-tools/sidebar_tui"
  version "0.1.12"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/ftl-tools/sidebar_tui/releases/download/v0.1.12/sb-v0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "cf26640870afb161693585369bb05fff8f06fa7030edaaa0a3b330c1502b3180"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ftl-tools/sidebar_tui/releases/download/v0.1.12/sb-v0.1.12-x86_64-apple-darwin.tar.gz"
      sha256 "071f7230b777221b8dbfe929c559bafc2a230ad0b9b8a9f29c7a3aee54524c2e"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/ftl-tools/sidebar_tui/releases/download/v0.1.12/sb-v0.1.12-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9a169e72dfa1f28b86b5d140bcc7c61027bf8bc4afe1b6a3ce8e4277160e51cc"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ftl-tools/sidebar_tui/releases/download/v0.1.12/sb-v0.1.12-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c715da68a6097d198c633c7ac4db97cda3e3995fb36584ff0ca7f2c886592956"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb --version")
  end
end
