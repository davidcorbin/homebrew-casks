cask "seamless" do
  version "0.4.3"
  sha256 "9b28c9f06d75b187dcf908f5201002d8e2b6129d7582c85cb03c2550626a55ba"

  url "https://software.davcor.co/seamless/Seamless-#{version}-arm64.zip"
  name "Seamless"
  desc "Remote Desktop client that shows each remote app as native windows"
  homepage "https://software.davcor.co/seamless/"

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
