<p align="center">
<img src = "https://user-images.githubusercontent.com/56252259/105874888-21ac6480-6023-11eb-9915-954f2d41f5d0.png" width = 800, height = 400>
</p>

# Loafjet 🚀

[![CI Status](https://img.shields.io/travis/gokulnair2001/Loafjet.svg?style=flat)](https://travis-ci.org/gokulnair2001/Loafjet)
[![Version](https://img.shields.io/cocoapods/v/Loafjet.svg?style=flat)](https://cocoapods.org/pods/Loafjet)
![Badge](https://img.shields.io/badge/License-MIT-yellow) 
[![Platform](https://img.shields.io/cocoapods/p/Loafjet.svg?style=flat)](https://cocoapods.org/pods/Loafjet)

## About 📒
Loafjet is a Toast generator library which allows the user to add customised Toasts to his/her projects. Loafjet comes with various types of Toast Animations as well as Toast Positions. It can be used to add gradient and plain toasts. Loafjet comes with extra features like Popup Card and Loading Indicator which can be customised according to your needs.

## Installation 🌏

Loafjet is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Loafjet'
```
## Playground 💻

* I've provided a demo project to showcase the uses of Loafjet! Simply clone this repo, and open `Loafjet.xcworkspace`.
* Run `pod install`.
* Here you can see and experiment custom Loaf styles in `Examples.swift`.

# How To Use 📁 ?
From any view controller, a Loaf can be presented by calling:

```swift
Loaf.PlainLoaf(Message: "Message goes here", Position: .Bottom, AnimationDirection: .Bottom, LoafjetView: View)
```
### Result: 💯

| Plain Default Loaf|
| --- |
|<img width="345" alt="Screenshot 2021-01-27 at 12 31 14 PM" src="https://user-images.githubusercontent.com/56252259/105955014-9b803480-609b-11eb-91f5-2b60732bea50.png"> |

* This is the most basic Loafjet you can make with least line of code 😙.
* Below all Loafjet types are mentioned , have a look on it 😊.

### Plain Loaf
* With Default Parameters 📗
```swift
 Loaf.PlainLoaf(Message: String, Position: LoafPosition, AnimationDirection: LoafAnimation, LoafjetView: UIView)
```
* Without Default Parameters 📘
```swift
Loaf.PlainLoaf(Message: String, Position:LoafPosition, LoafWidth:CGFloat , LoafHeight:CGFloat,CornerRadius: CGFloat, FontStyle: String, FontSize: CGFloat, BGColor: UIColor, FontColor: UIColor, LoafImage: String? , AnimationDirection: LoafAnimation , Duration: TimeInterval, LoafjetView: UIView)
```
### Gradient Loaf
* With Default Parameters 📗
```swift
Loaf.GradientLoaf(Message: String, Position: LoafPosition, BGColor1: UIColor, BGColor2: UIColor, FontColor: UIColor, LoafImage: String?, AnimationDirection: LoafAnimation, LoafjetView: UIView)
```
* Without Default Parameters 📘
```swift
Loaf.GradientLoaf(Message: String, Position:LoafPosition, LoafWidth:CGFloat, LoafHeight:CGFloat, CornerRadius: CGFloat, FontStyle: String, FontSize: CGFloat, BGColor1: UIColor, BGColor2: UIColor, FontColor: UIColor,LoafImage: String?, AnimationDirection: LoafAnimation, Duration: TimeInterval, LoafjetView: UIView)
```
### Popup Card
* With Default Parameters 📗
```swift
Loaf.PopupCard(Message: String, Position: LoafPosition, BGColor1: UIColor, BGColor2: UIColor, FontColor: UIColor, LoafImage: String?, BlurEffect: UIBlurEffectStyle?, LoafjetView: UIView)
```
* Without Default Parameters 📘
```swift
Loaf.PopupCard(Message: String, Position:LoafPosition, LoafWidth:CGFloat, LoafHeight:CGFloat, CornerRadius: CGFloat, FontStyle: String, FontSize: CGFloat, BGColor1: UIColor, BGColor2: UIColor, FontColor: UIColor, LoafImage: String?, Duration: TimeInterval, BlurEffect: UIBlurEffectStyle?, LoafjetView: UIView)
```
### LoafWheel
* With Default Parameters 📗
```swift
 Loaf.LoafWheel(Message: String, BGColor1: UIColor, BGColor2: UIColor, LoafWheelView: UIView)
```
* Without Default Parameters 📘
```swift
Loaf.LoafWheel(Message: String, LoafWidth:CGFloat, LoafHeight:CGFloat, CornerRadius:CGFloat, BGColor1:UIColor, BGColor2:UIColor,FontStyle: String, FontSize: CGFloat, FontColor: UIColor, Duration: TimeInterval, WheelStyle: UIActivityIndicatorViewStyle, BlurEffect: UIBlurEffectStyle ,LoafWheelView: UIView)
```
### LoafWheel Dismissal 📕 

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

- The above mentioned ❌ means that particular combination of position & animation wont be working accurately .

# Snapshots 📸

|  Plain(Top)| Plain(Bottom) | Plain(Centre) | Plain(Centre)|
:-------------------------:|:-------------------------: | :-------------------------: | :-------------------------:
<img width="345" alt="Screenshot 2021-01-27 at 1 57 03 AM" src="https://user-images.githubusercontent.com/56252259/105906142-50d5cc80-6049-11eb-8e40-e30eac21516f.png">|  <img width="345" alt="Screenshot 2021-01-27 at 1 58 44 AM" src="https://user-images.githubusercontent.com/56252259/105906160-56331700-6049-11eb-8fba-3badbaa6ae1b.png"> | <img width="345" alt="Screenshot 2021-01-27 at 1 57 43 AM" src="https://user-images.githubusercontent.com/56252259/105906154-54695380-6049-11eb-94c5-deb7df585053.png"> | <img width="345" alt="Screenshot 2021-01-27 at 1 58 23 AM" src="https://user-images.githubusercontent.com/56252259/105906157-559a8080-6049-11eb-9c20-108f8510499a.png">
| Gradient(Top) | Gradient(Bottom) | Gradient(Centre) | Gradient(Centre) |
 <img width="345" alt="Screenshot 2021-01-27 at 2 01 02 AM" src="https://user-images.githubusercontent.com/56252259/105906149-5206f980-6049-11eb-992e-3f600bf9ab48.png"> |<img width="345" alt="Screenshot 2021-01-27 at 2 00 11 AM" src="https://user-images.githubusercontent.com/56252259/105906162-57644400-6049-11eb-9bdf-c3c47ed3b29e.png"> | <img width="345" alt="Screenshot 2021-01-27 at 2 00 25 AM" src="https://user-images.githubusercontent.com/56252259/105906165-57fcda80-6049-11eb-81be-48acd7114a4e.png"> | <img width="345" alt="Screenshot 2021-01-27 at 2 00 46 AM" src="https://user-images.githubusercontent.com/56252259/105906168-58957100-6049-11eb-9bc0-d0d04175f95e.png">

* Above shown are few possible ways, you can customise according to your need (Customisation shown below).

# Customisation 🛠

* Loafjet offers you a wide variety of customisation, select a style and apply your creativity on it.
* This are some possible ways, "How Loafjet can be used ?".

### Snapshots 📷

| Do Not Disturb | Information | Warning |
:-------------------------:|:-------------------------: | :-------------------------:
<img width="345" alt="Screenshot 2021-01-27 at 2 04 10 AM" src="https://user-images.githubusercontent.com/56252259/105902733-0d795f00-6045-11eb-833a-a364e8365987.png"> |  <img width="345" alt="Screenshot 2021-01-27 at 2 19 10 AM" src="https://user-images.githubusercontent.com/56252259/105903573-0d2d9380-6046-11eb-87b1-89f87c2f9da5.png"> | <img width="345" alt="Screenshot 2021-01-27 at 2 04 32 AM" src="https://user-images.githubusercontent.com/56252259/105902747-123e1300-6045-11eb-9033-b7e64e5febc1.png">
| Success | Error | Device Detection |
<img width="345" alt="Screenshot 2021-01-27 at 2 04 43 AM" src="https://user-images.githubusercontent.com/56252259/105902751-136f4000-6045-11eb-8412-d7565d39a753.png"> | <img width="345" alt="Screenshot 2021-01-27 at 2 05 00 AM" src="https://user-images.githubusercontent.com/56252259/105902752-1407d680-6045-11eb-8fae-33fbd96e61e2.png">  | <img width="345" alt="Screenshot 2021-01-27 at 2 05 14 AM" src="https://user-images.githubusercontent.com/56252259/105902753-14a06d00-6045-11eb-8d1c-e8d77aac8d9d.png">

# Loafjet + 
### Additional features

* `Gradient Loafwheel` & `Popup card` are the additional customisation which you get in Loafjet🥳.

|Popup Card|Loaf Wheel|
|---| --- |
|<img width="345" alt="Screenshot 2021-01-27 at 2 06 42 AM" src="https://user-images.githubusercontent.com/56252259/105955866-f36b6b00-609c-11eb-8184-e7554471b5dc.png"> | <img width="345" alt="Screenshot 2021-01-27 at 12 47 33 PM" src="https://user-images.githubusercontent.com/56252259/105956449-d5ead100-609d-11eb-9059-145df3cc141b.png"> |

* What are you waiting for, write `pod Loafjet` and `pod install` it .
* Done?, Now enjoy using Loafjet🚀.

## Instructions ⚠️

* At a time you can only use one Loaf(Simultaneous use is allowed).
* Customise Loaf Position and Anmation according to the above given table.
* Use ```.greatestFiniteMagnitude``` in duration to get an infinte loader.
* To dismiss the loader use ``` Loaf.dismissWheel(LoafWheelView:UIView) ```.
* For certain colors and blur effect particular iOS version is required, So to solve it use the below code (By default Xcode will show you both the fix).
```swift
// iOS versions will varry 
if #available(iOS 10.0, *) {. 
 // write the code to run
 }
 else {
 print("Error Message")
}
``` 
### OR

```swift
// iOS versions will varry 
 @available(iOS 10.0, *)
```

* Test Run of few Loafjets are given, have a look on it (Running all Loafjets at a time may lead to irregular functioning!).

## Note 🔴

* Currently 'Loafjet' dont support SF Symbols, if you need it just raise an issue and I will try to add it ⚓️.
* The Loafimage you add must be present in the `Images.xcassets` file .
* Loafimages which you add must be of A x A Size(Else images may get cutout!).
* In the Test Run make sure you don't run all the Loafjets at a time, wait for one whole Loafjet to complete its task, then go for next.
* All the Loafjets are created with default parameters too, so notice carefully which one you are using (Functions with and without default parameters are shown ⬆️).

## Author 😊

[Gokul Nair](https://twitter.com/GokulNair2303)

## License ⚖️

Loafjet is available under the MIT license. See the [LICENSE](https://github.com/gokulnair2001/Loafjet) file for more info.

## How to Contribute 🖋
* Run the app - Steps are mentioned above.
* If you face issues in any step open a new issue (Format mentioned below).
* To fix issues: Fork this repository, make your changes and make a Pull Request.

## Issues ❕

* Create a new issue (Follow the format):
### Issue Report Format
* `Subject` : Mention the issue in one line.
* `Description` : Describe the issue.
* `File Name` : Write the file name in which the bug is present.
* `How to solve` : If you have the solution, mention it.

## Requirements ❕

* Device running on iOS/iPadOS 12.0+ versions 📱.
* Swift 5.1+ 💻

## Like the Project ?
If you like using any of my projects or like what I'm doing, please consider backing me with appreciating my work: [Message me](https://www.linkedin.com/in/gokul-r-nair/)🥰

[<img width="200" alt="BMC logo+wordmark - Black" src="https://cdn.buymeacoffee.com/buttons/v2/default-red.png">](https://www.buymeacoffee.com/gokulnair)

OR

**Drop a star ⭐ if you find this project interesting!**

<p align="center" width="100%">
   Made with ❤️ in 🇮🇳 By Gokul Nair   
</p>

