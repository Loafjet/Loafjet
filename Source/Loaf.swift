//
//  Loafjet.swift
//  Loafjet
//
//  Created by Gokul Nair on 22/01/21.
//

import UIKit

public class Loaf{
    
    private static let dashView = UIView()
    // PLAIN LOAF UTILITIES
    private static var PlainLoafView = UIView()
    private static var PlainLoafLabel = UILabel()
    private static var PlainLoafImageView = UIImageView()
    // GRADIENT LOAF UTILITIES
    private static var GradientLoafView = UIView()
    private static var GradientLoafLabel = UILabel()
    private static var GradientLoafImageView = UIImageView()
    // POPUPCARD UTILITIES
    private static let PopUpCardView = UIView()
    private static let PopUpCardLabel = UILabel()
    private static let PopUpCardImageView = UIImageView()
    // LOAFWHEEL UTILITIES
    private static let LoafWheelView = UIView()
    private static let LoafWheelLabel = UILabel()
    private static let wheel = UIActivityIndicatorView()
    private static let visualEffect = UIVisualEffectView()
    // DASH LOAF UTILITIES
    private static var dashSpacingCopy:CGFloat = 0            // Passing on spacing to @objc func
    // public static let dashButton = UIButton()
    
    //MARK: - Plain Loaf Method
    
    /// Plain Loaf is a Loaf view with custom background and various position placement option.
    /// - Parameters:
    ///   - message: Message to show on Loaf
    ///   - position: Where to place the Loaf
    ///   - loafWidth: Width of Loaf
    ///   - loafHeight: Height of Loaf
    ///   - cornerRadius: CornerRadius of Loaf
    ///   - fontStyle: Font style of Loaf
    ///   - fontSize: Font size of Loaf
    ///   - fontColor: Font colour of Loaf
    ///   - bgColor: Background colour of  Loaf
    ///   - loafImage: Image to show on Loaf
    ///   - animationDirection: Loaf Animation Direction
    ///   - duration: Animation Duration
    ///   - loafjetView: UIView on which the Loaf is to be presented
    ///   - alphaValue: The opacity value of the background colour parameter, specified as a value from 0.0 to 1.0.
    
    public static func PlainLoaf(message: String, position:LoafPosition, loafWidth:CGFloat = 200 , loafHeight:CGFloat = 40,cornerRadius: CGFloat = 20, fontStyle: String = "Avenir-Medium", fontSize: CGFloat = 17, bgColor: UIColor = .gray,fontColor: UIColor = .black, alphaValue:CGFloat = 1.0, loafImage: String? = nil , animationDirection: LoafAnimation , duration: TimeInterval = 3.0, loafjetView: UIView){
        
        PlainLoafView.layer.sublayers = nil                // Important: to remove the previously added layer
        
        // LOAF VIEW METHOD
        PlainLoafView.frame = position.centerPoint(view: loafjetView, width: loafWidth, height: loafHeight)
        PlainLoafView.backgroundColor = bgColor.withAlphaComponent(alphaValue)
        PlainLoafView.layer.cornerRadius = cornerRadius
        PlainLoafView.clipsToBounds = true
        
        // LOAF LABEL METHOD
        PlainLoafLabel.frame = CGRect(x: Loaf.PlainLoafView.frame.origin.x, y: Loaf.PlainLoafView.frame.origin.y, width: loafWidth , height: loafHeight)
        PlainLoafLabel.textAlignment = .center
        PlainLoafLabel.text = message
        PlainLoafLabel.font = UIFont(name: fontStyle, size: fontSize)
        PlainLoafLabel.textColor = fontColor
        PlainLoafLabel.numberOfLines = 3
        PlainLoafLabel.center.y = Loaf.PlainLoafView.center.y
        
        
        // LOAF IMAGE METHOD CALL
        let imageView = verifyLoafImage(view: loafjetView, Image: loafImage, Width: 25, Height: 25, LoafImageView: PlainLoafImageView, LoafView: PlainLoafView)
        
        // Animation method call
        Animation(Direction: animationDirection, View: loafjetView, DelayTime: duration, LoafLabel: PlainLoafLabel, LoafView: PlainLoafView, LoafImageView: imageView)
        
        // ADDING LOAF TO THE VIEW
        loafjetView.addSubview(PlainLoafView)
        loafjetView.addSubview(PlainLoafLabel)
        loafjetView.addSubview(PlainLoafImageView)
    }
    
    //MARK: - Gradient Loaf Method
    
    /// Gradient Loafis a Loaf view with different types of gradient background and various position placement support.
    /// - Parameters:
    ///   - message: Message to show on Loaf
    ///   - position: Where to place the Loaf
    ///   - loafWidth: Width of Loaf
    ///   - loafHeight: Height of Loaf
    ///   - cornerRadius: CornerRadius of Loaf
    ///   - fontStyle: Font style of Loaf
    ///   - fontSize: Fonst size of Loaf
    ///   - bgColor1: Gradient color 1
    ///   - bgColor2: Gradient color 2
    ///   - fontColor: Font color of Loaf
    ///   - loafImage: Image to show on Loaf
    ///   - animationDirection: Loaf Animation Direction
    ///   - duration: Animation Duration
    ///   - loafjetView: UIView on which the Loaf is to be presented
    
    public static func GradientLoaf(message: String, position:LoafPosition, loafWidth:CGFloat = 150,loafHeight:CGFloat = 40,cornerRadius: CGFloat = 20, fontStyle: String = "Avenir-Medium", fontSize: CGFloat = 17, bgColor1: UIColor, bgColor2: UIColor, fontColor: UIColor, loafImage: String?, animationDirection: LoafAnimation, duration: TimeInterval = 2.0, loafjetView: UIView) {
        
        GradientLoafView.layer.sublayers = nil                // Important: to remove the previously added layer
        // LOAF VIEW METHOD
        GradientLoafView.frame = position.centerPoint(view: loafjetView, width: loafWidth, height: loafHeight)
        GradientLoafView.layer.cornerRadius = cornerRadius
        GradientLoafView.clipsToBounds = true
        
        // LOAF LABEL METHOD
        GradientLoafLabel.frame = CGRect(x: Loaf.GradientLoafView.frame.origin.x, y: Loaf.GradientLoafView.frame.origin.y, width: loafWidth , height: loafHeight)
        GradientLoafLabel.textAlignment = .center
        GradientLoafLabel.text = message
        GradientLoafLabel.font = UIFont(name: fontStyle, size: fontSize)
        GradientLoafLabel.textColor = fontColor
        GradientLoafLabel.center.y = Loaf.GradientLoafView.center.y
        
        // GRADIENT BG METHOD
        let gradientLayer: CAGradientLayer = {
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [bgColor1.cgColor, bgColor2.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
            gradientLayer.cornerRadius = cornerRadius
            GradientLoafView.layer.insertSublayer(gradientLayer, at: 0)
            GradientLoafView.clipsToBounds = true
            GradientLoafView.backgroundColor = .none
            return gradientLayer
        }()
        gradientLayer.frame = GradientLoafView.bounds
        
        // LOAF IMAGE METHOD CALL
        let imageView = verifyLoafImage(view: loafjetView, Image: loafImage, Width: 25, Height: 25, LoafImageView: GradientLoafImageView, LoafView: GradientLoafView)
        
        // Animation method call
        Animation(Direction: animationDirection, View: loafjetView, DelayTime: duration, LoafLabel: GradientLoafLabel, LoafView: GradientLoafView, LoafImageView: imageView)
        
        // ADDING LOAF TO THE VIEW
        loafjetView.addSubview(GradientLoafView)
        loafjetView.addSubview(GradientLoafLabel)
        loafjetView.addSubview(GradientLoafImageView)
    }
}

//MARK: - Popup Card Method
extension Loaf{
    
    /// PopupCard is a card animation used to display quick info on screen.
    /// - Parameters:
    ///   - message: Message to show on Card
    ///   - loafWidth: Width of Card
    ///   - loafHeight: Height of Card
    ///   - cornerRadius: CornerRadius of Card
    ///   - fontStyle: Font style of Card
    ///   - fontSize: Fonst size of Card
    ///   - bgColor1: Gradient color 1
    ///   - bgColor2: Gradient color 2
    ///   - fontColor: Font color of Card
    ///   - loafImage: Image to show on Card
    ///   - duration: Animation Duration
    ///   - loafjetView: UIView on which the Card is to be presented
    
    public static func PopupCard(message: String, loafWidth:CGFloat = 150,loafHeight:CGFloat = 40,cornerRadius: CGFloat = 20, fontStyle: String = "Avenir-Medium", fontSize: CGFloat = 17, bgColor1: UIColor, bgColor2: UIColor, fontColor: UIColor,loafImage: String?, duration: TimeInterval = 2.0, blurEffect: UIBlurEffect.Style?, loafjetView: UIView) {
        
        PopUpCardView.layer.sublayers = nil                // Important: to remove the previously added layer
        
        // LOAF VIEW METHOD
        PopUpCardView.frame = CGRect(x: loafjetView.center.x, y: loafjetView.center.y, width: loafWidth, height: loafHeight)
        PopUpCardView.layer.cornerRadius = cornerRadius
        PopUpCardView.clipsToBounds = true
        
        // LOAF LABEL METHOD
        PopUpCardLabel.frame = CGRect(x: Loaf.PopUpCardView.frame.origin.x, y: Loaf.PopUpCardView.frame.origin.y, width: loafWidth-8 , height: loafHeight-120)
        PopUpCardLabel.text = message
        PopUpCardLabel.font = UIFont(name: fontStyle, size: fontSize)
        PopUpCardLabel.textColor = fontColor
        PopUpCardLabel.numberOfLines = .max
        PopUpCardLabel.center.y = PopUpCardView.center.y
        PopUpCardLabel.textAlignment = .center
        
        // GRADIENT BG METHOD
        let gradientLayer: CAGradientLayer = {
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [bgColor1.cgColor, bgColor2.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
            gradientLayer.cornerRadius = cornerRadius
            PopUpCardView.layer.insertSublayer(gradientLayer, at: 0)
            PopUpCardView.clipsToBounds = true
            PopUpCardView.backgroundColor = .none
            return gradientLayer
        }()
        gradientLayer.frame = PopUpCardView.bounds
        // LOAF IMAGE METHOD CALL
        let _ = verifyLoafImage(view: loafjetView, Image: loafImage, Width: 100, Height: 100, LoafImageView: PopUpCardImageView, LoafView: PopUpCardView)
        
        // Blur Effect call
        applyBlurEffect(effect: blurEffect, view: loafjetView)
        
        // Animation method call
        loafjetView.addSubview(PopUpCardView)
        loafjetView.addSubview(PopUpCardLabel)
        loafjetView.addSubview(PopUpCardImageView)
        
        PopUpCardLabel.center.x = loafjetView.center.x
        PopUpCardView.center.x = loafjetView.center.x
        PopUpCardLabel.center.y = loafjetView.center.y + 4000
        PopUpCardView.center.y = loafjetView.center.y + 4000
        PopUpCardImageView.center.y = loafjetView.center.y + 4000
        PopUpCardImageView.center.x = loafjetView.center.x
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
            // For bottom to top
            PopUpCardLabel.center.x = loafjetView.center.x
            PopUpCardView.center.x = loafjetView.center.x
            PopUpCardLabel.center.y = loafjetView.center.y + 110
            PopUpCardView.center.y = loafjetView.center.y+45
            PopUpCardImageView.frame = CGRect(x: PopUpCardView.center.x - 50 , y: PopUpCardView.frame.origin.y + 10, width: 100, height: 100)
        }completion: { (isCompleted) in
            UIView.animate(withDuration: 0.5, delay: duration, options: .curveEaseOut) {
                // top to bottom direction
                PopUpCardLabel.center.y = loafjetView.center.y + 800
                PopUpCardView.center.y = loafjetView.center.y + 800
                PopUpCardImageView.center.y = loafjetView.center.y + 800
                // for dismisal of blur effect
                DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                    visualEffect.removeFromSuperview()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        PopUpCardView.removeFromSuperview()
                    }
                }
            }
        }
    }
}
//MARK: - Loader Loaf Method
extension Loaf {
    
    // @available(iOS 12.0, *)
    /// LoafWheel is a custom loader view with gradient background support
    /// - Parameters:
    ///   - message: Message to show on Loaf
    ///   - loafWidth: Width of Loaf
    ///   - loafHeight: Height of Loaf
    ///   - cornerRadius: CornerRadius of Loaf
    ///   - bgColor1: Gradient color 1
    ///   - bgColor2: Gradient color 2
    ///   - fontStyle: Font style of Loaf
    ///   - fontSize: Font size of Loaf
    ///   - fontColor: Font colour of Loaf
    ///   - duration: Animation Duration
    ///   - wheelStyle: Activity Indicator type
    ///   - blurEffect: Blur Effect type
    ///   - loafjetView: UIView on which the Loaf is to be presented
    
    public static func LoafWheel(message: String, loafWidth:CGFloat = 50, loafHeight:CGFloat = 50, cornerRadius:CGFloat = 20, bgColor1:UIColor, bgColor2:UIColor, fontStyle: String = "Avenir-Medium", fontSize: CGFloat = 17, fontColor: UIColor = .black, duration: TimeInterval = 2.0, wheelStyle: UIActivityIndicatorView.Style = .white, blurEffect: UIBlurEffect.Style? = .regular ,loafWheelView: UIView) {
        
        LoafWheelView.layer.sublayers = nil        // Important: to remove the previously added layer
        
        // LOAF VIEW METHOD
        LoafWheelView.frame = CGRect(x: loafWheelView.center.x , y: loafWheelView.center.y, width: loafWidth, height: loafHeight)
        LoafWheelView.layer.cornerRadius = cornerRadius
        LoafWheelView.clipsToBounds = true
        LoafWheelView.center.x = loafWheelView.center.x
        LoafWheelView.center.y = loafWheelView.center.y
        
        // GRADIENT BG METHOD
        let gradientLayer: CAGradientLayer = {
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [bgColor1.cgColor, bgColor2.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
            gradientLayer.cornerRadius = cornerRadius
            LoafWheelView.layer.insertSublayer(gradientLayer, at: 0)
            LoafWheelView.clipsToBounds = true
            LoafWheelView.backgroundColor = .none
            return gradientLayer
        }()
        gradientLayer.frame = LoafWheelView.bounds
        
        // LOAF LABEL METHOD
        LoafWheelLabel.frame = CGRect(x: loafWheelView.center.x, y: loafWheelView.center.y, width: loafWidth , height: loafHeight)
        LoafWheelLabel.textAlignment = .center
        LoafWheelLabel.numberOfLines = .max
        LoafWheelLabel.text = message
        LoafWheelLabel.font = UIFont(name: fontStyle, size: fontSize)
        LoafWheelLabel.textColor = fontColor
        LoafWheelLabel.center.x = loafWheelView.center.x
        LoafWheelLabel.center.y = loafWheelView.center.y
        
        // Adding Indicator
        wheel.frame = CGRect(x: loafWheelView.frame.origin.x + loafWidth/2 - 25, y: loafHeight-50, width: 50, height: 50)
        wheel.hidesWhenStopped = true
        wheel.startAnimating()
        
        // Apply Blur effect call
        applyBlurEffect(effect: blurEffect, view: loafWheelView)
        loafWheelView.addSubview(LoafWheelView)
        loafWheelView.addSubview(LoafWheelLabel)
        LoafWheelView.addSubview(wheel)
        loafWheelView.isUserInteractionEnabled = false
        
        // for dismisal of blur effect
        DispatchQueue.main.asyncAfter(deadline: .now() + duration-0.4) {
            LoafWheelLabel.removeFromSuperview()
            LoafWheelView.removeFromSuperview()
            wheel.removeFromSuperview()
            visualEffect.removeFromSuperview()
            loafWheelView.isUserInteractionEnabled = true
        }
    }
    
    //MARK: - Loader Dismissal Method
    public static func dismissWheel(loafWheelView:UIView){
        LoafWheelLabel.removeFromSuperview()
        LoafWheelView.removeFromSuperview()
        wheel.removeFromSuperview()
        visualEffect.removeFromSuperview()
        loafWheelView.isUserInteractionEnabled = true
    }
}

//MARK: - Dash Board Methods
extension Loaf {
    
    /// Dash board is an user interactive Loaf with image, title , content and button support.
    /// - Parameters:
    ///   - dashSpacing: space to be left on both the sides of dashBoard
    ///   - dashRadius: cornerRadius of dashBoard
    ///   - dashColor: dashBoard background colour
    ///   - dashImage: image used in dashBoard
    ///   - dashImageRadius: cornerRadius of dash image
    ///   - dashTitle: main title of dashBoard
    ///   - dashTitleColor: dashBoard Title colour
    ///   - dashContent: content text on dashBoard
    ///   - dashContentColor: content text colour
    ///   - dashButtonTitle: dashBoard button title text
    ///   - dashButtonTitleColor: dashBoard button title colour
    ///   - dashButtonColor: dashBoard button background colour
    ///   - dashButtonRadius: dashBoard button cornerRadius
    ///   - dashButtonBorderColor: dashBoard button border colour
    ///   - dashButtonBorderWidth: dashBoard button border width
    ///   - dashDuration: duration of dashBoard presentation
    ///   - mainView: view in which dashBoard is to be presented
    ///   - completion: completion handler to add button action
    
    @available(iOS 14.0, *)
    public static func dashBoard(dashSpacing: CGFloat = 40, dashRadius:CGFloat = 20, dashColor: UIColor = .white, dashImage: String, dashImageRadius: CGFloat = 20,dashTitle:String, dashTitleColor:UIColor = .black, dashContent: String, dashContentColor:UIColor = .black, dashButtonTitle:String, dashButtonTitleColor:UIColor = .black, dashButtonColor: UIColor = .white, dashButtonRadius:CGFloat = 20, dashButtonBorderColor: UIColor = .white, dashButtonBorderWidth:CGFloat = 2, dashDuration: TimeInterval = 0.75, mainView:UIView, completion: @escaping () -> ()) {
        
        dashView.layer.sublayers = nil                // Important: to remove the previously added layer
        
        // Dash View Elements
        let contentLabel = UILabel()
        let titleLabel = UILabel()
        let dashPic = UIImageView()
        let dashButton = UIButton()
        
        dashSpacingCopy = dashSpacing         // assigning value to dashPassOns
        
        // Main Card Setup
        dashView.frame = CGRect(x: dashSpacing, y: (mainView.frame.height/3)*2 + 1000, width: mainView.frame.width-(2*dashSpacing), height: mainView.frame.height/3)
        dashView.center = mainView.center
        dashView.backgroundColor = dashColor
        dashView.layer.cornerRadius = dashRadius
        dashView.clipsToBounds = true
        
        // Title Label Setup
        titleLabel.frame = CGRect(x: 10, y: dashView.bounds.height/2 - 10, width: dashView.frame.width-20, height: 30)
        titleLabel.text = dashTitle
        titleLabel.font = UIFont(name: "Avenir Heavy", size: 25)
        titleLabel.textColor = dashTitleColor
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 1
        titleLabel.clipsToBounds = true
        titleLabel.backgroundColor = UIColor.clear
        
        // Content Label Setup
        contentLabel.frame = CGRect(x: 10, y: dashView.bounds.height/2 + 10 , width: dashView.frame.width-20, height: dashView.frame.height/4)
        contentLabel.text = dashContent
        contentLabel.textColor = dashContentColor
        contentLabel.adjustsFontSizeToFitWidth = true
        contentLabel.numberOfLines = 0
        contentLabel.backgroundColor = UIColor.clear
        contentLabel.textAlignment = .center
        contentLabel.clipsToBounds = true
        contentLabel.layer.cornerRadius = 20
        
        // Button Setup
        dashButton.frame = CGRect(x: 10, y: dashView.bounds.height - dashView.frame.height/6 - 5, width: dashView.frame.width-20, height: dashView.frame.height/6)
        dashButton.setTitle(dashButtonTitle, for: .normal)
        dashButton.backgroundColor = dashButtonColor
        dashButton.setTitleColor(dashButtonTitleColor, for: .normal)
        dashButton.titleLabel?.font = UIFont(name: "Avenir", size: 20)
        dashButton.layer.cornerRadius = dashButtonRadius
        dashButton.layer.borderWidth = dashButtonBorderWidth
        dashButton.layer.borderColor = dashButtonBorderColor.cgColor
        dashButton.clipsToBounds = true
        
        // DashBoard button action
        dashButton.addAction(UIAction(handler: { _ in
            completion()
        }), for: .touchUpInside)
        
        // ImageView Setup
        dashPic.frame = CGRect(x: dashView.frame.width/2 - 50, y: dashView.frame.height/4 - 50, width: 100, height: 100)
        dashPic.image = UIImage(named: dashImage)
        dashPic.backgroundColor = UIColor.clear
        dashPic.layer.cornerRadius = dashImageRadius
        
        // animation method
        UIView.animate(withDuration: dashDuration, delay: 0, options: .curveEaseOut) {
            // For bottom to top
            self.dashView.frame = CGRect(x: dashSpacing, y: (mainView.frame.height/3)*2 - 20, width: mainView.frame.width-(2*dashSpacing), height: mainView.frame.height/3)
        }
        
        // Adding Views
        dashView.addSubview(titleLabel)
        dashView.addSubview(dashPic)
        dashView.addSubview(dashButton)
        dashView.addSubview(contentLabel)
        mainView.addSubview(dashView)
        
    }
    
    // Dash board dismissal function
    public static func dismissDashBoard(inView: UIView) {
        UIView.animate(withDuration: 1.5, delay: 0, options: .curveEaseOut) {
            Loaf.dashView.frame = CGRect(x: dashSpacingCopy, y: (inView.frame.height/3)*2 + 1000, width: inView.frame.width-20, height: inView.frame.height/3)
        }
    }
}
//MARK: - Image verification method

extension Loaf {
    
    private static func verifyLoafImage(view: UIView, Image:String!, Width: CGFloat, Height: CGFloat, LoafImageView: UIImageView, LoafView: UIView) -> UIImageView?{
        guard Image != nil else {
            return nil
        }
        
        let LoafImage = UIImage(named: Image)
        LoafImageView.image = LoafImage!
        LoafImageView.frame = CGRect(x: PlainLoafLabel.frame.origin.x - (PlainLoafLabel.frame.width/2) - 10, y: view.frame.origin.y, width: Width, height: Height)
        LoafImageView.frame.origin.x = LoafView.frame.origin.x
        LoafImageView.center.y = LoafView.center.y
        return LoafImageView
    }
    
    //MARK: - Blur effect method
    private static func applyBlurEffect(effect: UIBlurEffect.Style?, view: UIView){
        guard let effect = effect else {
            return
        }
        
        let blurEffect = UIBlurEffect(style: effect)
        visualEffect.effect = blurEffect
        view.addSubview(visualEffect)
        visualEffect.frame = view.frame
    }
}

//MARK: - Animation Methods
extension Loaf{
    
    // Loaf Animation
    private static func Animation(Direction: LoafAnimation, View: UIView, DelayTime: TimeInterval, LoafLabel: UILabel, LoafView: UIView, LoafImageView: UIImageView?){
        
        if Direction == .Left {
            LoafLabel.center.x = View.center.x - 4000
            LoafView.center.x = View.center.x - 4000
            LoafImageView?.center.x = LoafView.frame.origin.x - 4000
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                //  For left to right
                LoafLabel.center.x = View.center.x
                LoafView.center.x = View.center.x
                LoafImageView?.center.x = LoafView.frame.origin.x+19
            }completion: { (isCompleted) in
                UIView.animate(withDuration: 0.5, delay: DelayTime, options: .curveEaseOut) {
                    LoafLabel.frame.origin.x += View.frame.maxX
                    LoafView.frame.origin.x += View.frame.maxX
                    LoafImageView?.frame.origin.x += View.frame.maxX
                }
            }
        }
        else if Direction == .Right {
            // Placing the label in left to fix the position in the start
            LoafLabel.center.x = View.center.y
            LoafView.center.x = View.center.y
            LoafImageView?.frame.origin.x = LoafView.frame.origin.x+19
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                LoafLabel.center.x = View.center.x
                LoafView.center.x = View.center.x
                LoafImageView?.frame.origin.x = LoafView.frame.origin.x+19
            }completion: { (isCompleted) in
                UIView.animate(withDuration: 0.5, delay: DelayTime, options: .curveEaseOut) {
                    // centre to left direction
                    LoafLabel.frame.origin.x -= View.frame.maxX
                    LoafView.frame.origin.x -= View.frame.maxX
                    LoafImageView?.frame.origin.x -= View.frame.maxX
                }
            }
        }
        else if Direction == .Bottom {
            LoafLabel.center.x = View.center.x
            LoafView.center.x = View.center.x
            LoafImageView?.center.x = LoafView.frame.origin.x+29
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                // For bottom to top
                LoafLabel.frame.origin.y -= View.frame.origin.y+5
                LoafView.frame.origin.y -= View.frame.origin.y+5
                LoafImageView?.frame.origin.y -= View.frame.origin.y+5
            }completion: { (isCompleted) in
                UIView.animate(withDuration: 0.5, delay: DelayTime, options: .curveEaseOut) {
                    // top to bottom direction
                    LoafLabel.frame.origin.y = View.frame.maxY
                    LoafView.frame.origin.y = View.frame.maxY
                    LoafImageView?.frame.origin.y = View.frame.maxY
                }
            }
        }
        else if Direction == .Top {
            LoafLabel.center.x = View.center.x
            LoafView.center.x = View.center.x
            LoafImageView?.frame.origin.x = LoafView.frame.origin.x+19
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                // For bottom to top
                LoafLabel.frame.origin.y += View.frame.origin.y+5
                LoafView.frame.origin.y += View.frame.origin.y+5
                LoafImageView?.frame.origin.y += View.frame.origin.x+5
            }completion: { (isCompleted) in
                UIView.animate(withDuration: 1.5, delay: DelayTime, options: .curveEaseOut) {
                    
                    LoafLabel.frame.origin.y -= View.frame.midY
                    LoafView.frame.origin.y -= View.frame.midY
                    LoafImageView?.frame.origin.y -= View.frame.midY
                }
            }
        }
        
        // Important: To remove the used view from the screen
        DispatchQueue.main.asyncAfter(deadline: .now() + DelayTime+1){
            LoafLabel.removeFromSuperview()
            LoafView.removeFromSuperview()
            LoafImageView?.removeFromSuperview()
        }
    }
}

