class Procly < Formula
  desc "Supervisor so coding agents never duplicate processes, containers or ports"
  homepage "https://github.com/philippe-desplats/procly"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.0/procly-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "2b72653b06b60d3894a0a203d8998309745a4167c9bd19d88329ff47872c62e7"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.0/procly-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "3ebd627548954d47c059de1b0235340b277c10fe2053071dc5d75cd7ee4fd81a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.0/procly-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "013568085d093f1eddaced4405fe5a5a901823cf3e8e8f9cfc505e8d157bc971"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.0/procly-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "581db0bb2ef80854653f7fd294ae1e6d0eae85e39a2eba266dbf9b58fddf616b"
    end
  end

  def install
    bin.install "procly"
  end

  test do
    assert_match "procly #{version}", shell_output("#{bin}/procly --version")
  end
end
