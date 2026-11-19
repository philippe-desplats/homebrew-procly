cask "procly-app" do
  version "0.5.1"

  on_arm do
    sha256 "e87739d4d1f4773b3c235d3aeecad6c3d84b25872f26baec28f6aa880d1c9c16"
    url "https://github.com/philippe-desplats/procly/releases/download/v#{version}/Procly-#{version}-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "259e9184d1639b7b5039f879c7ad4d50a552c8578268ca921d7954c4c1ac3382"
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
