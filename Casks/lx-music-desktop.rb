cask "lx-music-desktop" do
  version "1.2.2"
  sha256 "638ed654632457ba5835d88e9fed8b947d318019ce1a44236729d9d91b085414"

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}.dmg"
  name "洛雪音乐助手"
  homepage "https://github.com/lyswhut/lx-music-desktop/"
  app "lx-music-desktop.app"
end   