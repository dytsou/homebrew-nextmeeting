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

## Maintainer: bump after each NextMeeting release

Upstream publishes `NextMeeting.zip` on [GitHub Releases](https://github.com/dytsou/NextMeeting/releases) when `package.json` is version-bumped on `main`. Then:

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
