class Procly < Formula
  desc "Supervisor so coding agents never duplicate processes, containers or ports"
  homepage "https://github.com/philippe-desplats/procly"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.0/procly-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "32d0bd4ab832aa183c0b8e5919bb1e0f16f4e7d4cf6d35d704c4e065c554fdea"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.0/procly-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "e5c7bdf0a4eda448666f35895df0fbaec1b3234b1f11504ccfb133a1244b8292"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.0/procly-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "334bce15d14d353bf1ecc0445e1d418cba9c859f04790880d24920855f449f19"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.0/procly-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d1d1bebd83d0683000046cccfbbb65e3e849bd6be9b12426e0d93bb131edfcb"
    end
  end

  def install
    bin.install "procly"
  end

  test do
    assert_match "procly #{version}", shell_output("#{bin}/procly --version")
  end
end
