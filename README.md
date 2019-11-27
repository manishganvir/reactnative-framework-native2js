# reactnative-framework-native2js
An example which shows how one can invoke JS code from a native ios framework

## Install
cd example

npm install

## Creating js bundle
cd example

react-native bundle --entry-file index.js --platform ios --dev false --bundle-output ios-framework/main.jsbundle --assets-dest iosreact-native bundle --entry-file index.js --platform ios --dev false --bundle-output ios-framework/main.jsbundle --assets-dest ios

## Create framework with bundle
cd ios-framework/example-rn-framework/

pod install

## Open xcode project and build the framework
open example-rn-framework.xcworkspace/

->Build

## Copy all framework files to `example-rn-app/example-rn-app` folder
e.g. 
cd ..../Build/Products/Release-iphonesimulator/

find . -name \*.framework -exec cp -R {} /Projects/git/reactnative-bridge-example/example-rn-app/example-rn-app/ \;

## Run the app  example-rn-app/example-rn-app.xcodeproj/
