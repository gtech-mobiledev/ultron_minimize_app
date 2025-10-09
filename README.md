[![pub package](https://img.shields.io/pub/v/ultron_minimize_app.svg)](https://pub.dev/packages/ultron_minimize_app)
<a href="https://opensource.org/licenses/MIT" rel="noopener" target="_blank"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="MIT License Badge"></a>
<a href="https://github.c/om/gtech-mobiledev/ultron_minimize_app" rel="noopener" target="_blank"><img src="https://img.shields.io/badge/platform-flutter-ff69b4.svg" alt="Flutter Platform Badge"></a>


# Minimize App Plugin

A flutter plugin to minimize the current Flutter App

## Usage

`MinimizeApp.minimize();`

This will call moveTaskToBack() in Android and suspend the iOS app via URLSessionTask.suspend which means that the app will be moved to the background but not killed.

This is useful if your app is opened by another app or browser and after some some time you want the user to return to the previous app without calling an intent to open it.
