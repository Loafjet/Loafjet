<p align="center">
<img src = "https://user-images.githubusercontent.com/56252259/105874888-21ac6480-6023-11eb-9915-954f2d41f5d0.png" width = 800, height = 400>
</p>

# Loafjet

[![CI Status](https://img.shields.io/travis/gokulnair2001/Loafjet.svg?style=flat)](https://travis-ci.org/gokulnair2001/Loafjet)
[![Version](https://img.shields.io/cocoapods/v/Loafjet.svg?style=flat)](https://cocoapods.org/pods/Loafjet)
![Badge](https://img.shields.io/badge/License-MIT-yellow) 
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
### LoafWheel Dismissal 

```swift
Loaf.dismissWheel(LoafWheelView:UIView)
```

## Parameters 🎚

<table>
<tr><td>

| Parameter | Definition  |             
| --- | --- |
| Message | Message to show on Loaf |
| Position | Position of Loaf |
| LoafWidth | Loaf Width |
| LoafHeight | Loaf Height |
| CornerRadius | CornerRadius of Loaf | 
| FontStyle | Font Style of Message |
| FontSize | Font size of Message|
| BGColor | Background Color of Loaf |

</td><td> 

| Parameter | Definition |             
| --- | --- |
| LoafImage | Image on Loaf |
| Duration | Loaf Duration |
| AnimationDirection | Loaf Animation type |
| BlurEffect | Blur effect type |
| WheelStyle | Wheel Style |
| LoafWheelView | View on which LoafWheel is running |
| LoafjetView | View on which Loaf is presented |

</td></tr> </table>

## Combination of Position and Animations 📙

* Customise your Loaf according to the below given chart 🎛.

Position & Animation | Left | Right | Top | Bottom 
--- | --- | --- | --- | --- 
Top | ✅ | ✅ | ✅ | ✅ 
Centre | ✅ | ✅ | ❌ | ✅ 
Bottom | ✅ | ✅ | ❌ | ✅ 

## Instructions ⚠️

* At a time you can only use one Loaf(Simultaneous use is allowed).
* Customise Loaf Position and Anmation according to the above given table.
* Use ```.greatestFiniteMagnitude``` in duration to get an infinte loader.
* To dismiss the loader use ``` Loaf.dismissWheel(LoafWheelView:UIView) ```.
* For certain colors and blur effect particular iOS version is required, So to solve it use the below code (By default Xcode will show you this fix).
```swift
if #available(iOS 10.0, *) {
 // write the code to run
 }
 else {
 print("Error Message")
}
```
* Test Run of few Loafjets are give, have a look on it.

## Note 🔴

## Author 😊

[gokulnair2001](https://github.com/gokulnair2001)

## License ⚖️

Loafjet is available under the MIT license. See the [LICENSE](https://github.com/gokulnair2001/Loafjet) file for more info.

# Like the Project ?
If you like using any of my projects or like what I'm doing, please consider backing me with appreciating my work: [Message me](https://www.linkedin.com/in/gokul-r-nair/)🥰

[<img width="200" alt="BMC logo+wordmark - Black" src="https://cdn.buymeacoffee.com/buttons/v2/default-red.png">](https://www.buymeacoffee.com/gokulnair)

OR

**Drop a star ⭐ if you find this project interesting!**

<p align="center" width="100%">
   Made with ❤️ in 🇮🇳 By Gokul Nair   
</p>

