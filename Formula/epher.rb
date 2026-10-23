class Epher < Formula
  desc "Calculator language with live answers, 2D and 3D graphs, and a terminal command (CLI + TUI)"
  homepage "https://epher.org/"
  version "0.5.95"
  # All zeros until the first train that ships the tarball (ADR-0076):
  # the tap's self-update workflow replaces this line with the real
  # digest when the 0.5.93 release lands, so this formula only ever
  # installs from 0.5.93 onward.
  sha256 "7df48cb07376c788beb82e43b0a9dcf54fcbe805d6e096b4d1b5ea468e0a94ef"

  url "https://github.com/upyesp/epher/releases/download/v#{version}/epher-macos-aarch64.tar.gz"
  # Apple Silicon only (ADR-0025): an Intel mac gets Homebrew's clean
  # "no build exists" answer, the same policy the cask applies.
  depends_on arch: :arm64

  def install
    bin.install "epher"
  end

  def caveats
    <<~EOS
      This is the terminal command (CLI, REPL, TUI). The desktop app is
      a separate install:

        brew install --cask upyesp/tap/epher
    EOS
  end

  test do
    assert_equal "20", shell_output("#{bin}/epher '2 + 3 * 4'").strip
  end
end
