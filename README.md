# AppCreator

AppCreator prepares HTML websites and games as mobile app projects using Capacitor.

## Free workflow

The project is designed to use free tools wherever possible. No paid Apple Developer membership or iPhone is needed to create an iOS simulator build.

### Add your app

1. Put the website/game files in `www/`.
2. The entry page must be `www/index.html`.
3. Push the changes to the `main` branch.

### Android APK

1. Open **Actions → Build Android APK**.
2. Choose **Run workflow**.
3. When it finishes, download the APK from **Artifacts**.

The current Android workflow produces a debug APK for testing. A release build for public distribution needs a signing key.

### Free iOS simulator build

1. Open **Actions → Build iOS**.
2. Choose **Run workflow**.
3. When it finishes, download the `AppCreator-iOS-simulator` artifact.

This is an unsigned iOS Simulator app bundle (`.app`), not an IPA for installing on a physical iPhone. It can be used in an iOS simulator on a Mac. The cloud build itself runs on GitHub's macOS runner; free usage is subject to GitHub Actions account limits.

## About IPA files

An IPA for installation on a physical iPhone normally needs Apple code signing and a provisioning profile. A free Apple account has limited personal-device signing options, but it does not provide unrestricted distribution. AppCreator will not ask you to buy a subscription just to prepare the free simulator build.

Never put your Apple ID password, private signing key, or certificate password in the repository or in chat. If signing is added later, credentials must be stored as protected GitHub Actions secrets with help from a trusted adult.

## Important

APK and iOS apps are different platform builds. An APK cannot simply be converted into an IPA. iOS compilation requires Apple's Xcode toolchain on macOS.
