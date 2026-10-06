cask "seamless" do
  version "0.2.4"
  sha256 "c5c8d61a84234fafb76fe81c0f38451599cd30eea3a61ff5c94deb36f6a4a3c0"

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
