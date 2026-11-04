class Procly < Formula
  desc "Supervisor so coding agents never duplicate processes, containers or ports"
  homepage "https://github.com/philippe-desplats/procly"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.4.0/procly-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "22ffd2a11c17978719f284b1cc0b0dd94788262dc425c10a809f73ad03717ae1"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.4.0/procly-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "e65e0be3f47149c95bf3814e06f4800010b6d4324611f6e2ce31321292538fc4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.4.0/procly-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4da6efae893f02f0a172e8db2acaa1fb06c08d057bb6a111e86b17fb9cd69f01"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.4.0/procly-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0e50f5f13a0bf4ba51b5a3dd1acc92eb7787dbd5f5dcf116f66d165b1181c23"
    end
  end

  def install
    bin.install "procly"
  end

  test do
    assert_match "procly #{version}", shell_output("#{bin}/procly --version")
  end
end
