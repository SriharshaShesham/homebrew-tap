cask "picsl" do
  version "1.0.1"
  sha256 "f5c95caf8b33619b248626d0373484787b6cf603cd0f56f2376869e6c28fd198"

  url "https://github.com/SriharshaShesham/Picsl/releases/download/v#{version}/Picsl-#{version}.zip"
  name "Picsl"
  desc "Fast image viewer that steps through every picture in a folder"
  homepage "https://github.com/SriharshaShesham/Picsl"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Picsl.app"

  # Picsl is not notarized; clear the quarantine flag so it opens without the Gatekeeper prompt.
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/Picsl.app"],
        writable_paths: ["{{appdir}}/Picsl.app"]
  end

  zap trash: [
    "~/Library/Caches/io.github.sriharshashesham.picsl",
    "~/Library/Preferences/io.github.sriharshashesham.picsl.plist",
    "~/Library/Saved Application State/io.github.sriharshashesham.picsl.savedState",
  ]
end
