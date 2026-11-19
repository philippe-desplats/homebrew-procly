class Procly < Formula
  desc "Supervisor so coding agents never duplicate processes, containers or ports"
  homepage "https://github.com/philippe-desplats/procly"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.1/procly-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "2f6a632b34b8a1aca35fbb014c8c615c7d673077848c75ea6766f9310aa601f6"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.1/procly-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "b125061021f1c0a773753c15506c2be137b3c4fcbec6202d433789f1617d548d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.1/procly-0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c98014bcfd451bf60dc1787a892e16f2f7c87d8576695c968a4f60cef672466"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.1/procly-0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b799b0fed189a18b732d02c17feb457e8d930234da9c979b3e232f2b19f883e"
    end
  end

  def install
    bin.install "procly"
  end

  test do
    assert_match "procly #{version}", shell_output("#{bin}/procly --version")
  end
end
