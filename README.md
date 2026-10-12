# StarNotes

Standalone Android app for offline text notes and drawing. No account, network
permission, subscription, or imposed note quota. Notes are stored in local SQLite;
drawings store editable stroke data on the device.

## Download

Download `StarNotes_v1.0.1_offline.apk` from the
[native release](https://github.com/Dhyan2404/StarNotes/releases/tag/v1.0.1-native).
Android may ask you to allow APK installation from your browser or file manager.

## Compile through GitHub

Push native app changes to `main`, or open **Actions → Build Native StarNotes APK →
Run workflow**. The workflow uses the checked-in Gradle 8.5 wrapper, JDK 17, and
Android SDK 34. It compiles debug and release APKs, runs the app tests and Android
lint, and verifies the APK signature before publishing the release.

APK downloads are also available in the successful run's `StarNotes-Native-APK`
artifact. Logs and test reports are in `StarNotes-build-reports`.

The shared development signing key is included so clean GitHub runners can sign
the app and successive builds use the same certificate. It is a public test key;
see [.github/keystores/README.md](.github/keystores/README.md).

## Source

The standalone app is in `app/`. Text and drawings save when the editor leaves the
foreground. Screen recreation retains the note ID, preventing duplicate notes.
Failed saves report an error, and unreadable drawings retain their stored data.

The original APK and `decompiled/` belong to the older inspection workflow.
The native APK is built entirely from `app/` using the Android Gradle plugin.
