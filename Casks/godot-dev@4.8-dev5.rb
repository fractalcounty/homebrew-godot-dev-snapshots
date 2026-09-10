cask "godot-dev@4.8-dev5" do
  version "4.8-dev5"
  sha256 "f472a4d7fb2e2c39a21ddcb826187290b3c436c0e285dbfdbafbb1ed812f3be8"

  url "https://github.com/godotengine/godot-builds/releases/download/4.8-dev5/Godot_v4.8-dev5_macos.universal.zip",
      verified: "github.com/godotengine/godot-builds/"
  name "Godot Engine (Build 4.8-dev5)"
  desc "Free and open source 2D and 3D game engine (godot-builds release 4.8-dev5)"
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
