cask "pixlok" do
  version "1.1.0"
  sha256 "c6d58f0dbffbaeea0cc7c0bffded5585f581446862bcfdb6417cdc8c310bca0d"

  url "https://github.com/SriharshaShesham/Pixlok/releases/download/v#{version}/Pixlok-#{version}.zip"
  name "Pixlok"
  desc "Fast image viewer that steps through every picture in a folder"
  homepage "https://github.com/SriharshaShesham/Pixlok"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Pixlok.app"

  # Pixlok is not notarized; clear the quarantine flag so it opens without the Gatekeeper prompt.
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/Pixlok.app"],
        writable_paths: ["{{appdir}}/Pixlok.app"]
  end

  zap trash: [
    "~/Library/Caches/io.github.sriharshashesham.picsl",
    "~/Library/Caches/io.github.sriharshashesham.pixlok",
    "~/Library/Preferences/io.github.sriharshashesham.picsl.plist",
    "~/Library/Preferences/io.github.sriharshashesham.pixlok.plist",
    "~/Library/Saved Application State/io.github.sriharshashesham.picsl.savedState",
    "~/Library/Saved Application State/io.github.sriharshashesham.pixlok.savedState",
  ]
end
