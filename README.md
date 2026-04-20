# dytsou/nextmeeting

A [Homebrew tap](https://docs.brew.sh/Taps) for [NextMeeting](https://github.com/dytsou/NextMeeting): a macOS menu bar app that shows your next calendar meeting.

## Install

```bash
brew tap dytsou/nextmeeting
brew install --cask nextmeeting
```

Requires **macOS 13 Ventura** or later.

## Upgrade

```bash
brew upgrade --cask nextmeeting
```

## Maintainer: version bumps

**Automated (default):** When [NextMeeting’s `release.yml`](https://github.com/dytsou/NextMeeting/blob/main/.github/workflows/release.yml) creates a new GitHub Release, it also updates this repo’s [`Casks/nextmeeting.rb`](Casks/nextmeeting.rb) (`version` + `sha256`) and pushes to `main`. GitHub only allows **one deploy key per repository**, so the workflow uses a **second** key pair: store the private key in the NextMeeting repo secret **`TAP_DEPLOY_KEY`**, and add the matching **public** key here under **Settings → Deploy keys** with **Allow write access** (read-only keys cannot `git push`). CI uses `GIT_SSH_COMMAND` with that key so it is not confused with **`DEPLOY_KEY`** (NextMeeting). If push fails with “denied to deploy key”, confirm this key is added **here** (not only on NextMeeting) and that **write access** is enabled.

**Manual (fallback):** If you need to fix the cask without a release:

1. Open [`Casks/nextmeeting.rb`](Casks/nextmeeting.rb).
2. Set `version` to the new semver (no `v` prefix), matching the release tag without `v` (e.g. tag `v1.2.4` → `version "1.2.4"`).
3. Set `sha256` to the checksum of **`NextMeeting.zip`** for that release:

   ```bash
   curl -sL "https://github.com/dytsou/NextMeeting/releases/download/v1.2.4/NextMeeting.zip" | shasum -a 256
   ```

   Or read the `digest` field from the [GitHub API](https://api.github.com/repos/dytsou/NextMeeting/releases/latest) for the `NextMeeting.zip` asset.

4. Commit and push this repository.

## License

The cask metadata in this tap is MIT-licensed; [NextMeeting](https://github.com/dytsou/NextMeeting) itself is MIT-licensed.
