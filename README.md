<p align="center">
<img src = "https://user-images.githubusercontent.com/56252259/105874888-21ac6480-6023-11eb-9915-954f2d41f5d0.png" width = 800, height = 400>
</p>

<p align="center">
<a href="https://gokulnair-2001.medium.com/loafjet-a-toast-replacement-for-swift-3fd9a1563401"><img src="https://user-images.githubusercontent.com/56252259/112606155-0fda1880-8e3e-11eb-94b8-3e3db08fe822.png" width = 50, height = 50></img></a>
<a href="https://dev.to/gokulnair2001/loafjet-a-toast-replacement-for-swift-51e0"><img src="https://user-images.githubusercontent.com/56252259/112606158-110b4580-8e3e-11eb-95d0-ec514ed185a8.png" width = 50, height = 50></img></a>
</p>

<p align="center">
Do follow our blog pages 📃
</p>

# Loafjet 🚀

[![Version](https://img.shields.io/cocoapods/v/Loafjet.svg?style=flat)](https://cocoapods.org/pods/Loafjet)
![Badgse](https://img.shields.io/badge/License-MIT-yellow) 
[![Platform](https://img.shields.io/cocoapods/p/Loafjet.svg?style=flat)](https://cocoapods.org/pods/Loafjet)
![Badge](https://img.shields.io/badge/Xcode-12.0-green)
![badge](https://img.shields.io/badge/Swift-5.1-red)
![Badgse](https://img.shields.io/badge/RepoSize-21kb-brown)

## About 📒
Loafjet is a ***light weight*** Toast(Loaf) generator library which allows the user to add customised Toasts to their projects. Loafjet comes with various types of Toast Animations as well as Toast Positions. It can be used to add gradient and plain toasts. Loafjet comes with extra features like Popup Card and Loading Indicator which can be customised according to your needs.

## Now Customise Like Apple  !

|Airpods Detection|Silent|Normal|
|--|--|--|
|<img width="345" alt="Screenshot 2021-01-27 at 2 04 10 AM" src="https://user-images.githubusercontent.com/56252259/107314591-f746b680-6aba-11eb-9190-1f4e2fde72ee.png"> |<img width="345" alt="Screenshot 2021-01-27 at 2 04 10 AM" src="https://user-images.githubusercontent.com/56252259/107314597-fada3d80-6aba-11eb-90f3-06912f9313a3.png">|<img width="345" alt="Screenshot 2021-01-27 at 2 04 10 AM" src="https://user-images.githubusercontent.com/56252259/107314598-fb72d400-6aba-11eb-80ab-e90e09557105.png">|

* More [Customisation](https://github.com/Loafjet/Loafjet/blob/master/README.md#customisation-) sytles 🎛.

## Installation 🌏

Loafjet is available through [CocoaPods](https://cocoapods.org/pods/Loafjet). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Loafjet'
```
## Playground 💻

* I've provided a demo project to showcase the uses of Loafjet! Simply clone this repo, and open `Loafjet.xcworkspace`.
* Run `pod install`.
* Here you can see and experiment custom Loaf styles in `Examples.swift`.

# How To Use 📁 ?
From any view controller, a Loaf can be presented by following this two steps:
### 1. Import Library 🗳
```swift
 import Loafjet
```
### 2. Call Loafjet 📞
```swift
Loaf.PlainLoaf(message: "Message goes here", position: .Bottom, animationDirection: .Bottom, loafjetView: View)
```
### Result: 💯

| Plain Default Loaf|
| --- |
|<img width="345" alt="Screenshot 2021-01-27 at 12 31 14 PM" src="https://user-images.githubusercontent.com/56252259/105955014-9b803480-609b-11eb-91f5-2b60732bea50.png"> |

* This is the most basic Loafjet you can make with least line of code 👆.
* Below all Loafjet types are mentioned , have a look on it 😊.

### Plain Loaf
```swift
* With Default Parameters 📗 

 Loaf.PlainLoaf(message: String, position: loafPosition, animationDirection: loafAnimation, loafjetView: UIView)

* Without Default Parameters 📘

Loaf.PlainLoaf(message: String, position:LoafPosition, loafWidth:CGFloat , loafHeight:CGFloat, cornerRadius: CGFloat, fontStyle: String, fontSize: CGFloat, bgColor: UIColor, fontColor: UIColor, alphaValue:CGFloat, loafImage: String? , animationDirection: LoafAnimation , duration: TimeInterval, loafjetView: UIView)
```
* Plain Loaf [Demo Photo 🌁](https://github.com/Loafjet/Loafjet/blob/master/README.md#snapshots-)

### Gradient Loaf
```swift
* With Default Parameters 📗

Loaf.GradientLoaf(message: String, position: LoafPosition, bgColor1: UIColor, bgColor2: UIColor, fontColor: UIColor, loafImage: String?, animationDirection: loafAnimation, loafjetView: UIView)

* Without Default Parameters 📘

Loaf.GradientLoaf(message: String, position:LoafPosition, loafWidth:CGFloat, loafHeight:CGFloat, cornerRadius: CGFloat, fontStyle: String, fontSize: CGFloat, bgColor1: UIColor, bgColor2: UIColor, fontColor: UIColor, loafImage: String?, animationDirection: LoafAnimation, duration: TimeInterval, loafjetView: UIView)
```
* Gradient Loaf [Demo Photo 🌁](https://github.com/Loafjet/Loafjet/blob/master/README.md#snapshots-)

### Popup Card
```swift
* With Default Parameters 📗

Loaf.PopupCard(message: String, position: LoafPosition, bgColor1: UIColor, bgColor2: UIColor, fontColor: UIColor, loafImage: String?, blurEffect: UIBlurEffectStyle?, loafjetView: UIView)

* Without Default Parameters 📘

Loaf.PopupCard(message: String, position:LoafPosition, loafWidth:CGFloat, loafHeight:CGFloat, cornerRadius: CGFloat, fontStyle: String, fontSize: CGFloat, bgColor1: UIColor, bgColor2: UIColor, fontColor: UIColor, loafImage: String?, duration: TimeInterval, blurEffect: UIBlurEffectStyle?, loafjetView: UIView)
```
* Popup Card [Demo Photo 🌁](https://github.com/Loafjet/Loafjet/blob/master/README.md#loafjet--1)

### Dash Board
```swift
* With Default Parameters 📗

Loaf.dashBoard(dashImage: String, dashTitle: String, dashContent: String, dashButtonTitle: String, mainView: UIView)

* Without Default Parameters 📘

Loaf.dashBoard(dashSpacing: CGFloat, dashRadius: CGFloat, dashColor: UIColor, dashImage: String, dashImageRadius: CGFloat, dashTitle: String, dashTitleColor: UIColor, dashContent: String, dashContentColor: UIColor, dashButtonTitle: String, dashButtonTitleColor: UIColor, dashButtonColor: UIColor, dashButtonRadius: CGFloat, dashButtonBorderColor: UIColor, dashButtonBorderWidth: CGFloat, dashDuration: TimeInterval, mainView: UIView)

```

### LoafWheel
```swift
* With Default Parameters 📗

 Loaf.LoafWheel(message: String, bgColor1: UIColor, bgColor2: UIColor, loafWheelView: UIView)

* Without Default Parameters 📘

Loaf.LoafWheel(message: String, loafWidth:CGFloat, loafHeight:CGFloat, cornerRadius:CGFloat, bgColor1:UIColor, bgColor2:UIColor, fontStyle: String, fontSize: CGFloat, fontColor: UIColor, duration: TimeInterval, wheelStyle: UIActivityIndicatorViewStyle, blurEffect: UIBlurEffectStyle ,loafWheelView: UIView)
```
* Loafwheel [Demo Photo 🌁](https://github.com/Loafjet/Loafjet/blob/master/README.md#loafjet--1)
* Calling `LoafWheel Dismissal` is required when LoafWheel is used for **Dynamic Processing**❕.

### LoafWheel Dismissal 📕 

```swift
Loaf.dismissWheel(loafWheelView:UIView)
```
## Don't want to use CocoaPods❗️
<details>
<summary>
 I have a solution 👀
</summary>
 
 * Add this [Loaf.swift file](https://github.com/Loafjet/Loafjet/tree/master/Source) into your project.</br>
 * Now you are ready to use Loafjet 🚀.</br>
 * Remaining steps are same 😁.</br>
 * Do read the documentation till the end to get a reward 🎁 from [Loafjet](https://github.com/Loafjet) Organisation. </br>

</details>

## Parameters 🎚

<table>
<tr><td>

| Parameter | Definition  |             
| --- | --- |
| message | Message to show on Loaf |
| position | Position of Loaf |
| loafWidth | Loaf Width |
| loafHeight | Loaf Height |
| cornerRadius | CornerRadius of Loaf | 
| fontStyle | Font Style of Message |
| fontSize | Font size of Message|
| bgColor | Background Color of Loaf |

</td><td> 

| Parameter | Definition |             
| --- | --- |
| alphaValue | Opacity value for Loaf's background|
| loafImage | Image on Loaf |
| duration | Loaf Duration |
| animationDirection | Loaf Animation type |
| blurEffect | Blur effect type |
| wheelStyle | Wheel Style |
| loafWheelView | View on which LoafWheel is running |
| loafjetView | View on which Loaf is presented |

</td></tr> </table>

## Combination of Position and Animations 📙

* Customise your Loaf according to the below given chart 🎛.

Position & Animation | Left | Right | Top | Bottom 
--- | --- | --- | --- | --- 
Top | ✅ | ✅ | ✅ | ❌ 
Centre | ✅ | ✅ | ❌ | ❌ 
Bottom | ✅ | ✅ | ❌ | ✅ 

- The above mentioned ❌ means that particular combination of position & animation won't be working accurately .

## Portrait & Landscape Support 📱

* Have a look on your Loafjet supports📇

Loafjet | Portrait | Landscape
-- | -- | --
Plain Loaf | ✅ | ✅
Gradient Loaf | ✅ | ✅
Popup Card | ✅ | ✅
Dash Board | ✅ | ❌
Loaf Wheel | ✅ | ✅

* Other than Dash board all the Loafjets support every type of orientation.
* Dash Board Landscape support will be added soon 💻

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

* `Dash Board`,`Gradient Loafwheel` & `Popup card` are the additional customisation which you get in Loafjet🥳.

|Popup Card|Loaf Wheel|
|-- | -- |
|<img src="https://user-images.githubusercontent.com/56252259/107311069-b13a2480-6ab3-11eb-8e06-9c9fc6cba61d.gif" width="345" height="300"/>|<img src="https://user-images.githubusercontent.com/56252259/107311073-b303e800-6ab3-11eb-9783-27a01fad8c4a.gif" width="345" height="300"/>|

## Dash Board
| Loafjet Proprietary | Alert Style | Successful Style |
|-- |-- |-- |
|<img width="245" alt="Screenshot 2021-01-27 at 2 04 10 AM" src="https://user-images.githubusercontent.com/56252259/113347394-be0c2380-9352-11eb-94f2-007051484985.png"> |<img width="245" alt="Screenshot 2021-01-27 at 2 04 10 AM" src="https://user-images.githubusercontent.com/56252259/113347390-bcdaf680-9352-11eb-8066-34c3ff8477dc.png"> | <img width="245" alt="Screenshot 2021-01-27 at 2 04 10 AM" src="https://user-images.githubusercontent.com/56252259/113347940-8c478c80-9353-11eb-8a12-07a81176b5bd.png">|

### Dark \ Light Mode Support
| Dark Mode | Light Mode |
|-- |-- |
| <img width="245" alt="Screenshot 2021-01-27 at 2 04 10 AM" src="https://user-images.githubusercontent.com/56252259/113347792-4be80e80-9353-11eb-9715-bd0c77da3f85.png">|<img width="245" alt="Screenshot 2021-01-27 at 2 04 10 AM" src="https://user-images.githubusercontent.com/56252259/113347784-4985b480-9353-11eb-944c-92a71905239c.png"> |

* What are you waiting for, write `pod Loafjet` and `pod install` it .
* Done?, Now enjoy using Loafjet🚀.

# Video Demo 🎥

| Top(Top) | Bottom(Bottom) |
|-- | -- |
|<img src="https://user-images.githubusercontent.com/56252259/107311063-b0a18e00-6ab3-11eb-8e83-685564d22e3b.gif" width="300" height="100"/>|<img src="https://user-images.githubusercontent.com/56252259/107311074-b39c7e80-6ab3-11eb-8505-8181098b3744.gif" width="300" height="100"/>|

| Centre(Right) | Centre(Left) |
|-- | -- |
|<img src="https://user-images.githubusercontent.com/56252259/107311053-ac757080-6ab3-11eb-9e86-a50c0a68042d.gif" width="300" height="100"/>|<img src="https://user-images.githubusercontent.com/56252259/107311058-af706100-6ab3-11eb-9229-02ce2cf8be21.gif" width="300" height="100"/>|

* This are some possible ```Position X Animation``` combination, Loafjet supports various other [combinations](https://github.com/Loafjet/Loafjet/blob/master/README.md#combination-of-position-and-animations-) too.

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
### Or

```swift
// iOS versions will varry 
 @available(iOS 10.0, *)
```

* Test Run of few Loafjets are given, have a look on it (Running all Loafjets at a time may lead to **irregular functioning!**).

## Note 🔴

* Currently 'Loafjet' dont support SF Symbols, if you need it just raise an issue and I will try to add it ⚓️.
* The Loafimage you add must be present in the `Images.xcassets` file .
* Loafimages which you add must be of A x A Size(Else images may get cutout!).
* In the Test Run make sure you don't run all the Loafjets at a time, wait for one whole Loafjet to complete its task, then go for next.
* All the Loafjets are created with default parameters too, so notice carefully which one you are using (Functions with and without default parameters are shown ⬆️).
* **Loafjet is still in developement stage, you might face some bugs; do create an [issue](https://github.com/Loafjet/Loafjet/issues/new/choose) and inform us☮️.**

## Portrait + Landscape Support 🔄
* Loafjet is made with Landscape + Portrait support🔓.
* Now You can use your favourite Loaf without aking care of orientation🌀.
 
| Landscape Demo |
|-- |
|<img src="https://user-images.githubusercontent.com/56252259/113085542-abcca100-91fd-11eb-81b1-3ded381efee9.gif" width="600" height="300"/>|

## Author 😊

[Gokul Nair](https://twitter.com/GokulNair2303)

## License ⚖️

Loafjet is available under the MIT license. See the [LICENSE](https://github.com/gokulnair2001/Loafjet) file for more info.

## How to Contribute 🖋
* Run the app - Steps are mentioned above.
* If you face issues in any step open a new issue.
* To fix issues: Fork this repository, make your changes and make a Pull Request.

## Requirements ❕

* Device running on iOS/iPadOS 12.0+ versions 📱.
* Swift 5.1+ 💻

# Community 🍕
* Want to be a part of our Organisation 🚀, then:
* Mail us [here](gokulnair.2001@gmail.com) ✉️
* Do mention the following things: <br> 
      1. Reason <br>
      2. Motive <br>
      3. Skills <br>
      4. What you liked abou Loafjet❤️ <br>
* We are eager to read you mail⚡️!

## Like the Project ?
If you like using any of my projects or like what I'm doing, please consider backing me with appreciating my work: [Message me](https://twitter.com/GokulNair2303)🥰

[<img width="200" alt="BMC logo+wordmark - Black" src="https://cdn.buymeacoffee.com/buttons/v2/default-red.png">](https://www.buymeacoffee.com/gokulnair)

OR

**Drop a star ⭐ if you find this project interesting!**

**If you ❤️ the project then there is a gift for you:**
* [Gift From Loafjet Organisation](https://loafjet.github.io/LoafjetLogo.github.io/)
* Set the following image as your iPhone's Lock Screen wallpaper and see the magic 🪄.
* Thank Me later by giving a ⭐️ to Loafjet🚀 .

<p align="center" width="100%">
   Made with ❤️ in 🇮🇳 By Gokul Nair   
</p>

