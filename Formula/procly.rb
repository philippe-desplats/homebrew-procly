class Procly < Formula
  desc "Supervisor so coding agents never duplicate processes, containers or ports"
  homepage "https://github.com/philippe-desplats/procly"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.1/procly-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "3343a2a7bd09e4310d256d1a29c9f357ef3146599a5372255a6d71cc73ff5cd1"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.1/procly-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "1e9f59f0bdb8cade5de5321e1ee345be33f59ed54c8d3b32711ad03477d0f38b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.1/procly-0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7a13ce0f5c3b44975d54a5fcd1a1a04fe09ec5d0aee2aad7de75c845a2fc28b7"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.1/procly-0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "044d4eaf9f6ebb4b0f5ea69af351f8fd08e24c19b2e154831a643be744d0b01d"
    end
  end

  def install
    bin.install "procly"
  end

  test do
    assert_match "procly #{version}", shell_output("#{bin}/procly --version")
  end
end
