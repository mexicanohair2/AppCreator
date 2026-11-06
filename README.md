# AppCreator

AppCreator builds Android and iOS app packages from one HTML/CSS/JavaScript project using Capacitor.

## Add a project

1. Put the website or game files in `www/`.
2. The entry page must be `www/index.html`.
3. Commit and push the project to the `main` branch.

## Build Android and iOS

Open **Actions → Build All Platforms → Run workflow**. When the workflow finishes, download the artifacts:

- `AppCreator-Android-debug` — Android debug APK.
- `AppCreator-iOS-unsigned-IPA` — unsigned iOS device package in IPA container format.
- `AppCreator-iOS-simulator` — iOS Simulator app bundle.

You can also run **Build Android APK** or **Build iOS** separately.

## Important iOS limitation

The generated IPA is **unsigned**. It proves that the iOS app was compiled and packaged, but it cannot be installed on a physical iPhone as-is. Installing on a real iPhone requires a valid Apple signing identity and provisioning profile. A free Apple Personal Team is limited to personal development testing and short-lived provisioning; it is not unrestricted distribution.

The simulator `.app` can be used with an iOS simulator on a Mac. You do not need an iPhone to create either iOS build artifact.

## Android

The APK is a debug build for testing. A release APK intended for wider distribution should be signed with a release key. Keep signing keys and passwords out of the repository and chat.

## Privacy and credentials

Never commit Apple ID passwords, private signing keys, or certificate passwords. If device signing is configured in the future, use protected GitHub Actions secrets and get help from a trusted adult.

## Technical note

APK and IPA are not interchangeable formats. AppCreator compiles the same HTML project separately for Android and iOS; it does not convert an APK into an IPA.
