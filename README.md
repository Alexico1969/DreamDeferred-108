# dreamdeferred108

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# --------------------------------------------------

Description of the files:

- api_input.dart: The main function here is getData(). It retreives data from the https://alexvanwinkel.pythonanywhere.com/times API endpoint, there is also a class in there called TechTimes that you can use to store the data that is coming from the API endpoint
- large_txt.dart: This files holds pieces of larger text in separate functions that you can call from anywhere (to avoid clutter)
- main.dart: The main code that will be fired up when the app lauches. Shouldn't hold too much code.
- pages.dart: The file that holds most of the processes in the app. Split up in classes/routes. Pretty much per page in the app.
- variables: This is a file that holds some global variables. This makes it easier to use variables across files, classes and functions.
- pubspec: The file that holds all extra packages we need for the project. It also holds a list of assets (mandatory) like images.