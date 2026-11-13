cask "procly-app" do
  version "0.5.0"

  on_arm do
    sha256 "e4a331d28de832d1f0d98cfc89341cc12db6bbf0b50e102f4a4ac698a4cd65b2"
    url "https://github.com/philippe-desplats/procly/releases/download/v#{version}/Procly-#{version}-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "041d4fb7b4abca529af1ba34db6798228a7d03608afaeb8f85ed90efaaa860c5"
    url "https://github.com/philippe-desplats/procly/releases/download/v#{version}/Procly-#{version}-x86_64-apple-darwin.dmg"
  end

  name "Procly"
  desc "Desktop app for the Procly supervisor, with the procly command line"
  homepage "https://github.com/philippe-desplats/procly"

  depends_on macos: :ventura

  app "Procly.app"
  # The command line is the sidecar of the app, the one the app itself starts the Daemon with.
  binary "#{appdir}/Procly.app/Contents/MacOS/procly"
end
