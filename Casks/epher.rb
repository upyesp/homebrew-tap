cask "epher" do
  version "0.5.98"
  sha256 "e9296eada0f73041f6a5b6a2d597c1f10863317ca36314000b91231fe9766d0f"

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
