# manime

A new Flutter project to read manhwa

## Getting Started

1. Run the command 'flutter pub get'
2. Run the command to generate the android or ios folder 'flutter create . --platform=android'  
   or 'flutter create . --platform=ios'.
3. Create a firebase project and then intialize google authentication service on it
4. Install the firebase CLI and login on the local machine
5. Insure that the flutter sdk is installed
6. Run the command: 'dart pub global activate flutterfire_cli'
7. Run the Command 'flutterfire configure --project=<Your Project Identifier>'
8. Run the Command 'flutter run' if error occurs asking you to enable multidex support enable
   it and then stop the app.
9. Navigate to the android folder and run the command './gradlew signingReport'
10. It will generate the SHA-1 and SHA-256 key add it to the firebase android app By going to
    the Project settings and scrolling down to the user app section
11. Run command 'dart run flutter_native_splash:create --path=flutter_native_splash.yaml'
12. RUn command 'flutter pub run flutter_launcher_icons -f flutter_launcher_icons.yaml'
13. Voila the app is ready run it.
    Important Note:for steps 4,5,6,7 please follow the guide on how to add firebase to your flutter app
