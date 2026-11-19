cask "epher" do
  version "0.9.12"
  sha256 "6c0d3e4cc6c04a0ec08b1d3d4494fb0e341081a0b498f75d74ddb61b6a05ec37"

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
