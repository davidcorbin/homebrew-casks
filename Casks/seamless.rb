cask "seamless" do
  version "0.2.3"
  sha256 "b012b578f0e861c8ac0feed22e88f53218bcb9911a27434aba2e226cc24332c4"

  url "https://software.davcor.co/seamless/Seamless-#{version}-arm64.zip"
  name "Seamless"
  desc "Remote Desktop client that shows each remote app as native windows"
  homepage "https://software.davcor.co/seamless"

  livecheck do
    url "https://software.davcor.co/seamless/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Seamless.app"
  binary "#{appdir}/Seamless.app/Contents/MacOS/seamless"

  uninstall quit: "com.davcor.seamless"

  zap trash: [
    "~/Library/Application Support/Seamless",
    "~/Library/Logs/Seamless",
  ]
end
