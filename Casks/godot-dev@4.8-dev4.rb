cask "godot-dev@4.8-dev4" do
  version "4.8-dev4"
  sha256 "960d86660c402ff55946e0fe9a3a7a685debf893d5e4742ba89429c79cbbc77d"

  url "https://github.com/godotengine/godot-builds/releases/download/4.8-dev4/Godot_v4.8-dev4_macos.universal.zip",
      verified: "github.com/godotengine/godot-builds/"
  name "Godot Engine (Build 4.8-dev4)"
  desc "Free and open source 2D and 3D game engine (godot-builds release 4.8-dev4)"
  homepage "https://godotengine.org/"

  livecheck do
    skip "This is a versioned cask"
  end

  auto_updates true
  conflicts_with cask: "godot-dev"
  depends_on :macos

  app "Godot.app", target: "Godot Dev.app"
  binary "#{appdir}/Godot Dev.app/Contents/MacOS/Godot", target: "godot-dev"

  zap trash: [
    "~/Library/Application Support/Godot",
    "~/Library/Caches/Godot",
    "~/Library/Saved Application State/org.godotengine.godot.savedState",
  ]
end
