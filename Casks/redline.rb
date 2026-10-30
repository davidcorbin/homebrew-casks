cask "redline" do
  version "0.1.12"
  sha256 "40fce4c880a2867d87da81e8bf4c879d2c63056e9537382d7738cb1bacc28d4d"

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
