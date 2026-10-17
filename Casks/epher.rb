cask "epher" do
  version "0.5.90"
  sha256 "ec2d7c29630c4726e284042c99a5554e93e3fa257c56370400110b8693e57e14"

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
