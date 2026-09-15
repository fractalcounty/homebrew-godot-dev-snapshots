cask "godot-dev@4.8-dev6" do
  version "4.8-dev6"
  sha256 "cd4a801b04adcd9c95913acda897ce5db9d288affb475d7c49851bbc97ce3c09"

  url "https://github.com/godotengine/godot-builds/releases/download/4.8-dev6/Godot_v4.8-dev6_macos.universal.zip",
      verified: "github.com/godotengine/godot-builds/"
  name "Godot Engine (Build 4.8-dev6)"
  desc "Free and open source 2D and 3D game engine (godot-builds release 4.8-dev6)"
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
