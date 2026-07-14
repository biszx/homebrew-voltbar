# VoltBar
# brew install voltbar
#
# Tap: brew tap biszx/voltbar
# Source: https://github.com/biszx/voltbar

cask "voltbar" do
  version "1.0.0"
  sha256 "22726028c845314ccd3c4969a4796537c8ef036116b8e167bc508832ba9996ae"

  url "https://github.com/biszx/voltbar/releases/download/v#{version}/VoltBar-v#{version}.zip"
  name "VoltBar"
  desc "macOS menu bar battery utility"
  homepage "https://github.com/biszx/voltbar"

  depends_on macos: ">= :sequoia"

  app "VoltBar.app"

  caveats do
    <<~EOS
      To uninstall completely, run:
        /Applications/VoltBar.app/Contents/Resources/uninstall.sh

      This removes the app, helper launchd plist, and helper binary.
    EOS
  end
end
