cask "epher" do
  version "0.5.95"
  sha256 "2acb8f4e4f00d95e3806a9e4d99f0709f40c2f3a44fd9e1795ca5759bf00d247"

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
