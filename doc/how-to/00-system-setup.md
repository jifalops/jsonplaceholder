# System setup

This is largely going to be left up to you, but this project was created using VS Code and the beta channel of Flutter on a Linux/Ubuntu system, and for the web version it helps to have WebStorm.

Tool | URL
-|-
Dart SDK | https://webdev.dartlang.org/guides/get-started#2-install-dart
Flutter | https://flutter.io/get-started/install
VS Code | https://code.visualstudio.com
WebStorm | https://www.jetbrains.com/webstorm/download
Android Studio | https://developer.android.com/studio

> Web applications require the normal Dart SDK, and cannot use the one that comes prepackaged with Flutter.

## Environment (Linux/Ubuntu)

In `~/.profile` add the following paths to access the command-line tools. This assumes the Flutter repo is at `~/flutter` and Android tools, etc. (optional) are at at `~/android`.

```sh
# Add Dart SDK binaries to the path, if they exist.
if [ -d "/usr/lib/dart/bin" ] ; then
    PATH="/usr/lib/dart/bin:$PATH"
fi

# Add Flutter binaries to the path, if they exist.
if [ -d "$HOME/flutter/bin" ] ; then
    PATH="$HOME/flutter/bin:$PATH"
fi

# Add binaries from Dart pub packages to the path, if they exist.
if [ -d "$HOME/.pub-cache/bin" ] ; then
    PATH="$HOME/.pub-cache/bin:$PATH"
fi

# Add Android tools to the path, if they exist.
if [ -d "$HOME/android/sdk/tools/bin" ] ; then
    PATH="$HOME/android/sdk/tools/bin:$PATH"
fi

export PATH
```

## Completing system setup

For the web version you should make two additional binaries available through pub, `webdev` and `stagehand`.

```sh
> pub global activate webdev
> pub global activate stagehand
```

Finally, here is the output of `flutter doctor -v` for reference.

```
> flutter doctor -v
[✓] Flutter (Channel beta, v0.7.3, on Linux, locale en_US.UTF-8)
    • Flutter version 0.7.3 at /home/jacob/flutter
    • Framework revision 3b309bda07 (2 weeks ago), 2018-08-28 12:39:24 -0700
    • Engine revision af42b6dc95
    • Dart version 2.1.0-dev.1.0.flutter-ccb16f7282

[✓] Android toolchain - develop for Android devices (Android SDK 26.0.2)
    • Android SDK at /home/jacob/android/sdk
    • Android NDK location not configured (optional; useful for native profiling support)
    • Platform android-27, build-tools 26.0.2
    • ANDROID_HOME = /home/jacob/android/sdk
    • Java binary at: /opt/android-studio/jre/bin/java
    • Java version OpenJDK Runtime Environment (build 1.8.0_152-release-1024-b01)
    • All Android licenses accepted.

[✓] Android Studio (version 3.1)
    • Android Studio at /opt/android-studio
    • Flutter plugin version 28.0.1
    • Dart plugin version 173.4700
    • Java version OpenJDK Runtime Environment (build 1.8.0_152-release-1024-b01)

[✓] IntelliJ IDEA Community Edition (version 2017.2)
    • IntelliJ at /home/jacob/Downloads/idea-IC-172.4343.14
    • Flutter plugin version 17.0
    • Dart plugin version 172.4155.35

[✓] VS Code (version 1.27.1)
    • VS Code at /usr/share/code
    • Flutter extension version 2.18.0

[✓] Connected devices (1 available)
    • Android SDK built for x86 64 • emulator-5554 • android-x64 • Android 7.1.1 (API 25) (emulator)
```

## Directory structure

Each package requires a `pubspec.yaml` and should have a `README.md`.

For package layout conventions see https://www.dartlang.org/tools/pub/package-layout.
