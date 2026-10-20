# Homebrew tap for Procly

[Procly](https://github.com/philippe-desplats/procly) is a local supervisor that coding agents call instead of starting dev processes and containers themselves, so that parallel agents and parallel git worktrees never duplicate a process, a container or a port.

## Install

```console
$ brew install philippe-desplats/procly/procly
```

Or tap first, then install by name:

```console
$ brew tap philippe-desplats/procly
$ brew install procly
```

Upgrade with `brew upgrade procly`. The formula installs the prebuilt binary of the release for macOS (Apple silicon and Intel) and Linux (arm64 and x86_64).

## How the formula is updated

`Formula/procly.rb` is written by the release workflow of the Procly repository. Pushing a tag `v<version>` there builds the 4 binaries, publishes them to GitHub Releases with a `SHA256SUMS` file, then renders the formula from those checksums and pushes it here. Prereleases, versions with a hyphen, never reach this tap.

Nothing in this repository is edited by hand. To render the formula of a published release again, for instance after a failed run of the release workflow, run the `Update` workflow of this repository from its Actions page with the version, such as `0.1.0`.

Every change to the formula runs the `Tests` workflow, which audits it and installs it on macOS and Linux.
