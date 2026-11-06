# AppCreator

AppCreator packages HTML websites and games into Android APKs and iOS apps using Capacitor.

## What works in this starter

- Android APK builds in GitHub Actions on Ubuntu.
- iOS archive/build runs on a macOS GitHub runner.
- The same web assets are used for both platforms.
- A local Android build script is included for computers with Android Studio, Java and Android SDK.

## Add your project

Put the website/game files in `www/`. The entry page must be `www/index.html`.
Keep the existing `www/appcreator.css` and `www/appcreator.js` if you want to keep the AppCreator starter screen; replace them when adding your own app.

## Cloud Android build

1. Push your project files into `www/`.
2. Open **Actions → Build Android APK → Run workflow**.
3. Download the APK from the completed workflow's Artifacts section.

The workflow builds a debug APK. It is suitable for testing; a release suitable for distribution needs a signing key and a separate release configuration.

## Cloud iOS build

Open **Actions → Build iOS IPA → Run workflow** on a macOS runner. A distributable, signed IPA requires Apple signing assets and provisioning. Configure these GitHub Actions secrets:

- `IOS_CERTIFICATE_BASE64`: base64-encoded .p12 certificate
- `IOS_CERTIFICATE_PASSWORD`: password for the .p12
- `IOS_PROVISION_PROFILE_BASE64`: base64-encoded provisioning profile
- `IOS_TEAM_ID`: Apple Developer Team ID
- `IOS_BUNDLE_ID`: app bundle identifier

Without valid signing assets, the workflow can compile an unsigned Xcode build but cannot produce an installable, signed IPA. Apple Developer account access is required for normal device distribution.

## Local Android build

Run `scripts/build-android.sh` on macOS/Linux after installing Java 17, Android Studio and the Android SDK. On Windows, use the equivalent Gradle tasks from Android Studio.

## Important limitation

This is a real build pipeline starter, not a universal binary converter. APK and IPA are platform-specific packages: an existing APK cannot simply be converted into an IPA, and iOS builds require Apple's toolchain (Xcode on macOS).
