[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/JudoKitObjC.svg)](https://img.shields.io/cocoapods/v/JudoKitObjC.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/JudoKitObjC.svg)](http://http://cocoadocs.org/docsets/JudoKitObjC)
[![Platform](https://img.shields.io/cocoapods/p/JudoKitObjC.svg)](http://http://cocoadocs.org/docsets/JudoKitObjC)
[![Twitter](https://img.shields.io/badge/twitter-@JudoPayments-orange.svg)](http://twitter.com/JudoPayments)

# Judopay Objective-C SDK

The Judopay Objective-C SDK is a framework for integrating easy, fast and secure payments inside your app with Judopay. It contains an exhaustive in-app payments and security toolkit that makes integration simple and quick. If you are integrating your app in swift, we highly recommend using [JudoKit](https://github.com/Judopay/JudoKit).

Use our UI components for a seamless user experience for card data capture. Minimize your [PCI scope](https://www.pcisecuritystandards.org/pci_security/completing_self_assessment) with a UI that can be themed or customized to match the look and feel of your app.

## Requirements

- Versions >= 7.0 require Xcode 9 and Swift 4.
- Versions >= 6.2.5 require Xcode 8 and Swift 3.
- Version 6.2.4 is the last version to be support Xcode 7.3.1 and Swift 2.2.

## Getting started

#### 1. Integration

Add `#import <JudoKitObjC/JudoKitObjC.h>` to the top of the file where you want to use the SDK.

If you are integrating using Cocoapods, follow the steps below (if your integration is based on Carthage, then visit https://github.com/JudoPay/JudoKitObjC/wiki/Carthage.

- You can install CocoaPods with the following command:

```bash
$ gem install cocoapods
```

- Add JudoKitObjC to your `Podfile` to integrate it into your Xcode project:

```ruby
platform :ios, '10.0'

pod 'JudoKitObjC', '~> 10.0.2'
```

- Then, run the following command:

```bash
$ pod install
```

- Please make sure to always **use the newly generated `.xcworkspace`** file not the projects `.xcodeproj` file.
- In your Xcode environment, go to your `Project Navigator` (blue project icon) called `Pods`, select the `JudoKitObjC` target and open the tab called `Build Phases`.
- Add a new `Run Script Phase` and drag it above the `Compile Sources` build phase.
- In the shell script, paste the following line:

```bash
sh "${PODS_ROOT}/DeviceDNA/Framework/strip-frameworks-cocoapods.sh"
```

#### 2. Setup

You can set your token and secret here when initializing the session:

```objc
// initialize the SDK by setting it up with a token and a secret
self.judoKitSession = [[JudoKit alloc] initWithToken:token secret:secret];
```

To instruct the SDK to communicate with the Sandbox, include the following lines in the ViewController where the payment should be initiated:

```objc
// setting the SDK to Sandbox Mode - once this is set, the SDK will stay in Sandbox mode until the process is killed
self.judoKitSession.apiSession.sandboxed = YES;
```

When you are ready to go live you can remove this line.

#### 3. Make a payment

```objc
    JPAmount *amount = [[JPAmount alloc] initWithAmount:@"25.0" currency:@"GBP"];

    [self.judoKitSession invokePayment:judoID amount:amount consumerReference:@"consRef" cardDetails:nil completion:^(JPResponse * response, NSError * error) {
        if (error || response.items.count == 0) {
            if (error.domain == JudoErrorDomain && error.code == JudoErrorUserDidCancel) {
                [self dismissViewControllerAnimated:YES completion:nil];
            } else {
	            // handle error
            }
        } else {
        	// handle success
        }
    }];
```
**Note:** Please make sure that you are using a unique Consumer Reference for each different consumer.

## Next steps

Judo's Objective-C SDK supports a range of customization options. For more information on using Judopay for iOS see our [documentation](https://docs.judopay.com/#ios).
