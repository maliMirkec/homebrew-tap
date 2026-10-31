cask "bokich" do
  version "2.1.1"
  sha256 "b98bdbe0bbd474dc0da1ee4462607d42c7c33f767f5decc79b908911d910a354"

  url "https://github.com/maliMirkec/bokich/releases/download/v#{version}/Bokich-#{version}.zip"
  name "Bokich"
  desc "Keeps you on your current Space and follows the apps you pick"
  homepage "https://github.com/maliMirkec/bokich"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Bokich.app"

  uninstall quit: "codes.silvestar.bokich"

  zap trash: "~/Library/Preferences/codes.silvestar.bokich.plist"

  caveats <<~EOS
    Bokich is self-signed, not notarized. On first launch macOS blocks it.
    Open System Settings → Privacy & Security and click Open Anyway.

    Bokich needs Accessibility access.
    Then open the Bokich menu → Setup for the recommended macOS settings.
  EOS
end
