# Loafjet

[![CI Status](https://img.shields.io/travis/gokulnair2001/Loafjet.svg?style=flat)](https://travis-ci.org/gokulnair2001/Loafjet)
[![Version](https://img.shields.io/cocoapods/v/Loafjet.svg?style=flat)](https://cocoapods.org/pods/Loafjet)
[![License](https://img.shields.io/cocoapods/l/Loafjet.svg?style=flat)](https://cocoapods.org/pods/Loafjet)
[![Platform](https://img.shields.io/cocoapods/p/Loafjet.svg?style=flat)](https://cocoapods.org/pods/Loafjet)

## About 📒
Lofjet is a Toast generator library which allows the user to add customised Toast to his project. Loafjet comes with various types of Toast animation as well as toast position. It can be used to add gradient and plain toasts. Loafjet comes with extra features like Popup Card and Loading Indicator. This Popup Cards and Loading Indicator can be customised according to the needs.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Device running on iOS/iPadOS 12.0+ versions 📱.

## Installation

Loafjet is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Loafjet'
```
# How To Use 📁 ?

### Plain Loaf
```swift
Loaf.PlainLoaf(Message: String, Position:LoafPosition, LoafWidth:CGFloat , LoafHeight:CGFloat,CornerRadius: CGFloat, FontStyle: String, FontSize: CGFloat, BGColor: UIColor, FontColor: UIColor, LoafImage: String? , AnimationDirection: LoafAnimation , Duration: TimeInterval, LoafjetView: UIView)
```
### Gradient Loaf

```swift
Loaf.GradientLoaf(Message: String, Position:LoafPosition, LoafWidth:CGFloat, LoafHeight:CGFloat, CornerRadius: CGFloat, FontStyle: String, FontSize: CGFloat, BGColor1: UIColor, BGColor2: UIColor, FontColor: UIColor,LoafImage: String?, AnimationDirection: LoafAnimation, Duration: TimeInterval, LoafjetView: UIView)
```
### Popup Card

```swift
Loaf.PopupCard(Message: String, Position:LoafPosition, LoafWidth:CGFloat, LoafHeight:CGFloat, CornerRadius: CGFloat, FontStyle: String, FontSize: CGFloat, BGColor1: UIColor, BGColor2: UIColor, FontColor: UIColor, LoafImage: String?, Duration: TimeInterval, BlurEffect: UIBlurEffectStyle?, LoafjetView: UIView)
```
### LoafWheel

```swift
Loaf.LoafWheel(Message: String, LoafWidth:CGFloat, LoafHeight:CGFloat, CornerRadius:CGFloat, BGColor1:UIColor, BGColor2:UIColor,FontStyle: String, FontSize: CGFloat, FontColor: UIColor, Duration: TimeInterval, WheelStyle: UIActivityIndicatorViewStyle, BlurEffect: UIBlurEffectStyle ,LoafWheelView: UIView)
```
# Combination of Position and Animations 📙

Position&Animation | Left | Right | Top | Bottom 
--- | --- | --- | --- | --- 
Top | ✅ | ✅ | ✅ | ✅ 
Centre | ✅ | ✅ | ❌ | ✅ 
Bottom | ✅ | ✅ | ❌ | ✅ 
* Customise your Loaf according to the above given chart 🎛.

## Author

gokulnair2001, “gokulnair.2001@gmail.com”

## License

Loafjet is available under the MIT license. See the LICENSE file for more info.
