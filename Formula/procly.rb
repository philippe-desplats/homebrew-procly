class Procly < Formula
  desc "Supervisor so coding agents never duplicate processes, containers or ports"
  homepage "https://github.com/philippe-desplats/procly"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.3.0/procly-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "fb928a6c6452a84232dd6012a4d8285576a83b2320f95a06f5c60974daccbd8b"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.3.0/procly-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "2b964f20a04fa64ce91d664afb057bf22d063cd6ce6b511276e2f5f46cc97f93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.3.0/procly-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "83fd72055058b549eede18a660aeaa590b81e82364448ae3ab620044a0473fe9"
    end
    on_intel do
      url "https://github.com/philippe-desplats/procly/releases/download/v0.3.0/procly-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c847c5de402d43dee48e8a693a0fd13fda39e007dd7e551685ef5a207c293384"
    end
  end

  def install
    bin.install "procly"
  end

  test do
    assert_match "procly #{version}", shell_output("#{bin}/procly --version")
  end
end
