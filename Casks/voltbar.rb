# VoltBar
# brew install voltbar
#
# Tap: brew tap biszx/voltbar
# Source: https://github.com/biszx/voltbar

cask "voltbar" do
  version "1.0.0"
  sha256 "df4610dee43c72e2fd9cb4ce885556f096020d74dd34fc2500950283f43f5458"

  url "https://github.com/biszx/voltbar/releases/download/#{version}/VoltBar-#{version}.zip"
  name "VoltBar"
  desc "macOS menu bar battery utility"
  homepage "https://github.com/biszx/voltbar"

  depends_on macos: :sequoia

  app "VoltBar.app"

  caveats do
    <<~EOS
      To uninstall completely, run:
        /Applications/VoltBar.app/Contents/Resources/uninstall.sh

      This removes the app, helper launchd plist, and helper binary.
    EOS
  end
end
