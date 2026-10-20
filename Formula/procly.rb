class Procly < Formula
  desc "Supervisor so coding agents never duplicate processes, containers or ports"
  homepage "https://github.com/philippe-desplats/procly"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.1.0/procly-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "dfb6996ba3e3d22f3db5ceb9360cb81172389fa440735fd869f25c2d2959cd60"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.1.0/procly-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "479ce05a52453ab2ff4d15c37bd363bc46b20486528aa4ffee302ae4b475a36b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.1.0/procly-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8723a5fe1e2b3c942a801495ffefe48568e503a62c7d81760c0773b66b55942a"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.1.0/procly-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3aec29be4ee469109f637de8bd3b016bb818a9466fdce62df6d2944b1e8d609"
    end
  end

  def install
    bin.install "procly"
  end

  test do
    assert_match "procly #{version}", shell_output("#{bin}/procly --version")
  end
end
