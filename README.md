# OverlayAlert

A small UILabel library to enable Snapchat-like top screen alerts.

## Installation

Available in [CocoaPods](http://cocoapods.org/?q=OverlayAlert)
```ruby
pod 'OverlayAlert'
```
To integrate OverlayAlert into your Xcode project using Carthage, specify it in your `Cartfile`:

```ruby
github "dzenbot/OverlayAlert"
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
