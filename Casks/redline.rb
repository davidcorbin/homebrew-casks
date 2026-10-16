cask "redline" do
  version "0.1.6"
  sha256 "97dd22e2d8dac74bd04b5410c6e20ae6ccdebed84d57758305cde5543c71b58f"

  url "https://software.davcor.co/redline/Redline-#{version}-macos-aarch64.dmg"
  name "Redline"
  desc "Fast git review tool with inline AI agent comments and suggested edits"
  homepage "https://software.davcor.co/redline/"

  livecheck do
    url "https://software.davcor.co/redline/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Redline.app"
  binary "#{appdir}/Redline.app/Contents/MacOS/redline"

  uninstall quit: "co.davcor.redline"

  zap trash: [
    "~/Library/Application Support/redline",
    "~/Library/Caches/redline",
    "~/Library/Preferences/co.davcor.redline.plist",
  ]
end
