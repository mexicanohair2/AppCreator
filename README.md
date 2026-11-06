# AppCreator

AppCreator takes one HTML/CSS/JavaScript project and can:
- publish it as a public website URL with GitHub Pages;
- package it as an Android debug APK with Capacitor.

An iPhone user can open the published web version in Safari. Multiplayer works only if the game itself has online/server support; publishing a URL does not automatically add multiplayer.

## Publish HTML as a URL

1. Put the complete site/game in `www/`, including images, stylesheets and scripts.
2. Make sure the start page is `www/index.html`.
3. Open **Actions → Publish HTML to URL → Run workflow**.
4. When the workflow succeeds, open its deployment environment or the GitHub Pages site URL.

The expected Pages address for this repository is `https://mexicanohair2.github.io/AppCreator/`. It becomes available after GitHub Pages is enabled for this repository and the first deployment succeeds. In **Settings → Pages**, set the build and deployment source to **GitHub Actions** if GitHub asks for it.

Pushing changes under `www/` to `main` also triggers a new deployment automatically.

## Build Android APK

Open **Actions → Build Android APK → Run workflow**. Download the `AppCreator-Android-debug` artifact when it finishes. This is a debug APK for testing; a release APK for distribution should be signed with a release key.

## Project structure

- `www/index.html` — website/game entry point.
- `www/` — all static site assets.
- `capacitor.config.json` and `package.json` — Android wrapper configuration.

## Limits

GitHub Pages hosts static files. It does not run a game server or provide accounts, matchmaking, or real-time multiplayer by itself. For multiplayer, the game needs a separate backend/server or a suitable realtime service. Keep API keys and private credentials out of public files and the repository.
