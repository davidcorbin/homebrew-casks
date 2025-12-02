cask "dcminibrowser" do
  version "v1.0.1"
  sha256 "d383c0f2f7e04b4a86aab6320f6074c963f60645800838820ad14bfe76d7f647"

  url "https://github.com/davidcorbin/DCMiniBrowser/releases/download/v#{version}/DCMiniBrowser.zip"
  name "DCMiniBrowser"
  desc "macOS menu bar application for displaying web pages in a popover"
  homepage "https://github.com/davidcorbin/DCMiniBrowser"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "DCMiniBrowser.app"

  zap trash: [
    "~/Library/Preferences/com.davcor.dcminibrowser.plist",
    "~/Library/Saved Application State/com.davcor.dcminibrowser.savedState",
  ]
end
