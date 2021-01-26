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

## Playground 💻

* I've provided an example project to showcase uses of Loafjet! Simply clone this repo, and open `Loafjet.xcworkspace`.
* Run `pod install`.
* Here you can see and experiment custom Loaf styles in `Examples.swift`.

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
Top | ✅ | ✅ | ✅ | ❌ 
Centre | ✅ | ✅ | ❌ | ❌ 
Bottom | ✅ | ✅ | ❌ | ✅ 

- The above mentioned ❌ means that particular combination of animation wont be working accurately .

# Customisation 🛠

* Loafjet offers you a wide variety of customisation, select a style and apply your creativity on it.
* This are some possible ways, "How Loafjet can be used ?".

### Snapshots 📷

| Do Not Disturb | Information | Warning |
:-------------------------:|:-------------------------: | :-------------------------:
<img width="345" alt="Screenshot 2021-01-27 at 2 04 10 AM" src="https://user-images.githubusercontent.com/56252259/105902733-0d795f00-6045-11eb-833a-a364e8365987.png"> |  <img width="345" alt="Screenshot 2021-01-27 at 2 19 10 AM" src="https://user-images.githubusercontent.com/56252259/105903573-0d2d9380-6046-11eb-87b1-89f87c2f9da5.png"> | <img width="345" alt="Screenshot 2021-01-27 at 2 04 32 AM" src="https://user-images.githubusercontent.com/56252259/105902747-123e1300-6045-11eb-9033-b7e64e5febc1.png">
| Success | Error | Device Detection |
<img width="345" alt="Screenshot 2021-01-27 at 2 04 43 AM" src="https://user-images.githubusercontent.com/56252259/105902751-136f4000-6045-11eb-8412-d7565d39a753.png"> | <img width="345" alt="Screenshot 2021-01-27 at 2 05 00 AM" src="https://user-images.githubusercontent.com/56252259/105902752-1407d680-6045-11eb-8fae-33fbd96e61e2.png">  | <img width="345" alt="Screenshot 2021-01-27 at 2 05 14 AM" src="https://user-images.githubusercontent.com/56252259/105902753-14a06d00-6045-11eb-8d1c-e8d77aac8d9d.png">

* What are you waiting for, write `pod Loafjet` and `pod install` it .
* Done?, Now enjoy using Loafjet🚀.

## Instructions ⚠️

* At a time you can only use one Loaf(Simultaneous use is allowed).
* Customise Loaf Position and Anmation according to the above given table.
* Use ```.greatestFiniteMagnitude``` in duration to get an infinte loader.
* To dismiss the loader use ``` Loaf.dismissWheel(LoafWheelView:UIView) ```.
* For certain colors and blur effect particular iOS version is required, So to solve it use the below code (By default Xcode will show you this fix).
```swift
//iOS version will varry 
if #available(iOS 10.0, *) {. 
 // write the code to run
 }
 else {
 print("Error Message")
}
```
* Test Run of few Loafjets are given, have a look on it (Running all Loafjets at a time may lead to irregular functioning!).

## Note 🔴

* Currently 'Loafjet' dont support SF Symbols, if you need it just raise an issue and I will try to add it ⚓️.
* The Loafimage you add must be present in the `Images.xcassets` file .
* Loafimages which you add must be of AxA Size(Else images may get cutout!).
* In the Test Run make sure you don't run all the Loafjets at a time, wait for one whole Loafjet to complete its task, then go for next.

## Author 😊

[Gokul Nair](https://github.com/gokulnair2001)

## License ⚖️

Loafjet is available under the MIT license. See the [LICENSE](https://github.com/gokulnair2001/Loafjet) file for more info.

## Issues ❕

* Create a new issue:
### Issue Report Format
* `Subject` : Mention the issue in one line.
* `Description` : Describe the issue.
* `File Name` : Write the file name in which the bug is present.
* `How to solve` : If you have the solution, mention it.

## Like the Project ?
If you like using any of my projects or like what I'm doing, please consider backing me with appreciating my work: [Message me](https://www.linkedin.com/in/gokul-r-nair/)🥰

[<img width="200" alt="BMC logo+wordmark - Black" src="https://cdn.buymeacoffee.com/buttons/v2/default-red.png">](https://www.buymeacoffee.com/gokulnair)

OR

**Drop a star ⭐ if you find this project interesting!**

<p align="center" width="100%">
   Made with ❤️ in 🇮🇳 By Gokul Nair   
</p>

