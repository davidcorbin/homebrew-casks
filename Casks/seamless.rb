cask "seamless" do
  version "0.2.7"
  sha256 "2a95108c1b93b4c9e3fe2e7fc3976c7e4b4e634dc51b645f19313c9efd340734"

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
