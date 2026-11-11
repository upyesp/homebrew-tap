cask "epher" do
  version "0.9.8"
  sha256 "b8d4230c7d49a227aff8b654d2c4156ee51f605e864ccd071bc4af2adf119eeb"

  url "https://github.com/upyesp/epher/releases/download/v#{version}/epher-macos-aarch64.dmg"
  name "epher"
  desc "Calculator language with live answers, 2D and 3D graphs, and a terminal command"
  homepage "https://epher.org/"

  depends_on arch: :arm64

  app "epher.app"
  # The terminal command rides inside the app bundle; linking it here
  # makes the in-app install button redundant but keeps it harmless.
  binary "#{appdir}/epher.app/Contents/MacOS/epher"
end
