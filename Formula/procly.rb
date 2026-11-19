class Procly < Formula
  desc "Supervisor so coding agents never duplicate processes, containers or ports"
  homepage "https://github.com/philippe-desplats/procly"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.1/procly-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "a34c644d21c5830555fd2c66228b4596fc180c4a869fe44a8ac251bb48b7ea22"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.1/procly-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "3f6daa39c267a3981b56aa0e6853ffd8f25e4e71d77ece632edcde7f92d735c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.1/procly-0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "98710f24ac42d123d87fc1addfe3205e0cf5a41079fd86227fe03b92064a6990"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.5.1/procly-0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4628ad4034eadad332572798871b597bbbe35e118d327870898b626fd9b79a8"
    end
  end

  def install
    bin.install "procly"
  end

  test do
    assert_match "procly #{version}", shell_output("#{bin}/procly --version")
  end
end
