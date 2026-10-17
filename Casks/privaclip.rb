cask "privaclip" do
  version "1.0.1"
  sha256 "23c8a97bcf05baca8133728f0104780984e2459d078093fdecbcc97f87111cc8"

  url "https://github.com/shubhamghosh98/privaclip/releases/download/v#{version}/PrivaClip-macOS-arm64.zip"
  name "PrivaClip"
  desc "Privacy-first, native Apple Silicon clipboard manager with hardware AES-GCM encryption"
  homepage "https://github.com/shubhamghosh98/privaclip"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "PrivaClip.app"

  uninstall quit: "com.privaclip.app"

  zap trash: [
    "~/Library/Application Support/com.privaclip.app",
    "~/Library/Preferences/com.privaclip.app.plist",
  ]
end
