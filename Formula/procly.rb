class Procly < Formula
  desc "Supervisor so coding agents never duplicate processes, containers or ports"
  homepage "https://github.com/philippe-desplats/procly"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.2.0/procly-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "31df80e55dd562f1c79191b9f026f4e7498c25662e02a259ab56c1e954b78b7f"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.2.0/procly-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f11dd8d901fb93b8fd77ae21959e6e5ff90cf37cd3239c44825f993b3e655564"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.2.0/procly-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8261dd4f9e7398f6efccba0ff255ab23e0ec572b51edb22cb47d8d6370f2b26c"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.2.0/procly-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "07a207691e4f88da0bbd4dff2bb1ed97fc2157d59588f7b5eefe0aa715b242e2"
    end
  end

  def install
    bin.install "procly"
  end

  test do
    assert_match "procly #{version}", shell_output("#{bin}/procly --version")
  end
end
