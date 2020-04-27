# Bongloy

[![CocoaPods](https://img.shields.io/cocoapods/v/Bongloy.svg?style=flat)](http://cocoapods.org/?q=author%3Abongloy%20name%3Abongloy)
[![License](https://img.shields.io/cocoapods/l/Bongloy.svg?style=flat)](https://github.com/khomsovon/bongloy-ios/blob/master/LICENSE)
[![Platform](https://img.shields.io/cocoapods/p/Bongloy.svg?style=flat)](https://github.com/khomsovon/bongloy-ios#)

This is the Unofficial iOS library for [Bongloy Payment Gateway](https://www.bongloy.com/).

## Installation
#### Install and configure the SDK
   - If you haven't already, install the latest version of [CocoaPods](https://guides.cocoapods.org/using/getting-started.html)
   - Add this line to your Podfile
      ```ssh
      pod 'Bongloy'
      ```
   - Run the following command
      ```ssh
      pod install
      ```
   - Don't forget to use the .xcworkspace file to open your project in Xcode, instead of the .xcodeproj file, from here on out.
   - In the future, to update to the latest version of the SDK, just run:
      ```ssh
      pod update Bongloy
      ```

#### Configure your Bongloy integration in your App Delegate

After you're done installing the SDK, configure it with your Bongloy [publishable key](https://sandbox.bongloy.com/dashboard/api_keys) in `AppDelegate.swift`.

``` swift
import UIKit
import Bongloy

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
      Stripe.setDefaultPublishableKey("pk_test_69bf785ab0e264c9b6b081040ea460eaf79833ae2219e57f1cc3379c26955c1a")
      return true
  }
}

## Usage

```swift
import Bongloy

let cardParam  = STPCardParams()
cardParam.number = "6200000000000005"
cardParam.expMonth = "12"
cardParam.expYear = "30"
cardParam.cvc = "123"
BongloyAPIClient.shared().createToken(withCard: cardParam){ (token: STPToken?, error: Error?) in
    guard let token = token, error == nil else { return }
    
    // do anything
}
```

## Documentation

See the [API docs](https://sandbox.bongloy.com/documentation).
