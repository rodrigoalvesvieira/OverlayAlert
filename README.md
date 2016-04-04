# OverlayAlert

A small UILabel library to enable Snapchat-like top screen alerts.

[![OverlayAlertSample](https://dl.dropboxusercontent.com/u/7743293/IMG_5056-small.jpg)](https://dl.dropboxusercontent.com/u/7743293/IMG_5056-small.jpg)

## Installation

Available in [CocoaPods](http://cocoapods.org/?q=OverlayAlert)
```ruby
pod 'OverlayAlert'
```
To integrate OverlayAlert into your Xcode project using Carthage, specify it in your `Cartfile`:

```ruby
github "rodrigoalvesvieira/OverlayAlert"
```

## Usage

Simply create a new `OverlayAlert` object and add it to an existing `UIVIew` object of your choice:

```swift

var successMessage: String?
successMessage = "Successfully logged in!"

let overlayMessage = OverlayAlert(text: successMessage!)
self.view.addSubview(overlayMessage)
```

###### Custom Appearance

###### Custom Duration

## Copyright

© 2016 Rodrigo Alves Vieira. All Rights Reserved.
