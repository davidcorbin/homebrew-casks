cask "seamless" do
  version "0.4.0"
  sha256 "a4058124fbf65df500d9a844d24435249f217ba51a7bca61205c03e4db38bf88"

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
