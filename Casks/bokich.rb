cask "bokich" do
  version "1.1.0"
  sha256 "11e3e48e3b4f29b244de6c9200ae13ff224ac3d41f5cdd341a6b7ff17a3031c9"

  url "https://github.com/maliMirkec/bokich/releases/download/v#{version}/Bokich-#{version}.zip"
  name "Bokich"
  desc "Keeps you on your current Space when you quit an app"
  homepage "https://github.com/maliMirkec/bokich"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Bokich.app"

  uninstall quit: "codes.silvestar.bokich"

  zap trash: "~/Library/Preferences/codes.silvestar.bokich.plist"

  caveats <<~EOS
    Bokich is self-signed, not notarized. On first launch macOS blocks it.
    Open System Settings → Privacy & Security and click Open Anyway.

    Bokich needs Accessibility access to catch Cmd+Q.
  EOS
end
