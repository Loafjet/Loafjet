//
//  Loafjet.swift
//  Loafjet
//
//  Created by Gokul Nair on 22/01/21.
//

import Foundation
import UIKit

public class Loaf{
    
    private static let LoafView = UIView()
    private static  let LoafLabel = UILabel()
    private static let LoafImageView = UIImageView()
    private static let wheel = UIActivityIndicatorView()
    private static let visualEffect = UIVisualEffectView()
    
    //MARK:- Plain Loaf Method
    
    /// Plain Loaf is a Loaf view with custom background and various position placement option.
    /// - Parameters:
    ///   - message: Message to show on Loaf
    ///   - position: Where to place the Loaf
    ///   - loafWidth: Width of Loaf
    ///   - loafHeight: Height of Loaf
    ///   - cornerRadius: CornerRadius of Loaf
    ///   - fontStyle: Font style of Loaf
    ///   - fontSize: Fonst size of Loaf
    ///   - fontColor: Font color of Loaf
    ///   - bgColor: Background color of  Loaf
    ///   - loafImage: Image to show on Loaf
    ///   - animationDirection: Loaf Animation Direction
    ///   - duration: Animation Duration
    ///   - loafjetView: UIView on which the Loaf is to be presented
    ///   - alphaValue: The opacity value of the background color parameter, specified as a value from 0.0 to 1.0.
    
    public static func PlainLoaf(message: String, position:LoafPosition, loafWidth:CGFloat = 200 , loafHeight:CGFloat = 40,cornerRadius: CGFloat = 20, fontStyle: String = "Avenir-Medium", fontSize: CGFloat = 17, bgColor: UIColor = .gray,fontColor: UIColor = .black, alphaValue:CGFloat = 1.0, loafImage: String? = nil , animationDirection: LoafAnimation , duration: TimeInterval = 3.0, loafjetView: UIView){
        
        LoafView.layer.sublayers = nil                // Important: to remove the previously added layer
        
        // LOAF VIEW METHOD
        LoafView.frame = position.centerPoint(view: loafjetView, width: loafWidth, height: loafHeight)
        LoafView.backgroundColor = bgColor.withAlphaComponent(alphaValue)
        LoafView.layer.cornerRadius = cornerRadius
        LoafView.clipsToBounds = true
        
        // LOAF LABEL METHOD
        LoafLabel.frame = CGRect(x: Loaf.LoafView.frame.origin.x, y: Loaf.LoafView.frame.origin.y, width: loafWidth , height: loafHeight)
        LoafLabel.textAlignment = .center
        LoafLabel.text = message
        LoafLabel.font = UIFont(name: fontStyle, size: fontSize)
        LoafLabel.textColor = fontColor
        LoafLabel.numberOfLines = 3
        LoafLabel.center.y = Loaf.LoafView.center.y
        
        // LOAF IMAGE METHOD CALL
        verifyLoafImage(view: loafjetView, Image: loafImage, Width: 25, Height: 25)
        
        // Animation method call
        Animation(Direction: animationDirection, View: loafjetView, DelayTime: duration)
        
        // ADDING LOAF TO THE VIEW
        loafjetView.addSubview(LoafView)
        loafjetView.addSubview(LoafLabel)
        loafjetView.addSubview(LoafImageView)
    }
    
    //MARK:- Gradient Loaf Method
    
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
        
        LoafView.layer.sublayers = nil                // Important: to remove the previously added layer
        // LOAF VIEW METHOD
        LoafView.frame = position.centerPoint(view: loafjetView, width: loafWidth, height: loafHeight)
        LoafView.layer.cornerRadius = cornerRadius
        LoafView.clipsToBounds = true
        
        // LOAF LABEL METHOD
        LoafLabel.frame = CGRect(x: Loaf.LoafView.frame.origin.x, y: Loaf.LoafView.frame.origin.y, width: loafWidth , height: loafHeight)
        LoafLabel.textAlignment = .center
        LoafLabel.text = message
        LoafLabel.font = UIFont(name: fontStyle, size: fontSize)
        LoafLabel.textColor = fontColor
        LoafLabel.center.y = Loaf.LoafView.center.y
        
        // GRADIENT BG METHOD
        let gradientLayer: CAGradientLayer = {
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [bgColor1.cgColor, bgColor2.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
            gradientLayer.cornerRadius = cornerRadius
            LoafView.layer.insertSublayer(gradientLayer, at: 0)
            LoafView.clipsToBounds = true
            LoafView.backgroundColor = .none
            return gradientLayer
        }()
        gradientLayer.frame = LoafView.bounds
        
        // LOAF IMAGE METHOD CALL
        verifyLoafImage(view: loafjetView, Image: loafImage, Width: 25, Height: 25)
        
        // Animation method call
        Animation(Direction: animationDirection, View: loafjetView, DelayTime: duration)
        
        // ADDING LOAF TO THE VIEW
        loafjetView.addSubview(LoafView)
        loafjetView.addSubview(LoafLabel)
        loafjetView.addSubview(LoafImageView)
    }
}

//MARK:- Popup Card Method

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
        
        LoafView.layer.sublayers = nil                // Important: to remove the previously added layer
        
        // LOAF VIEW METHOD
        LoafView.frame = CGRect(x: loafjetView.center.x, y: loafjetView.center.y, width: loafWidth, height: loafHeight)
        LoafView.layer.cornerRadius = cornerRadius
        LoafView.clipsToBounds = true
        
        // LOAF LABEL METHOD
        LoafLabel.frame = CGRect(x: Loaf.LoafView.frame.origin.x, y: Loaf.LoafView.frame.origin.y, width: loafWidth-8 , height: loafHeight-120)
        LoafLabel.text = message
        LoafLabel.font = UIFont(name: fontStyle, size: fontSize)
        LoafLabel.textColor = fontColor
        LoafLabel.numberOfLines = .max
        LoafLabel.center.y = LoafView.center.y
        LoafLabel.textAlignment = .center
        
        // GRADIENT BG METHOD
        let gradientLayer: CAGradientLayer = {
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [bgColor1.cgColor, bgColor2.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
            gradientLayer.cornerRadius = cornerRadius
            LoafView.layer.insertSublayer(gradientLayer, at: 0)
            LoafView.clipsToBounds = true
            LoafView.backgroundColor = .none
            return gradientLayer
        }()
        gradientLayer.frame = LoafView.bounds
        // LOAF IMAGE METHOD CALL
        verifyLoafImage(view: loafjetView, Image: loafImage, Width: 100, Height: 100)
        
        // Blur Effect call
        applyBlurEffect(effect: blurEffect, view: loafjetView)
        
        // Animation method call
        loafjetView.addSubview(LoafView)
        loafjetView.addSubview(LoafLabel)
        loafjetView.addSubview(LoafImageView)
        
        LoafLabel.center.x = loafjetView.center.x
        LoafView.center.x = loafjetView.center.x
        LoafLabel.center.y = loafjetView.center.y + 4000
        LoafView.center.y = loafjetView.center.y + 4000
        LoafImageView.center.y = loafjetView.center.y + 4000
        LoafImageView.center.x = loafjetView.center.x
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
            // For bottom to top
            LoafLabel.center.x = loafjetView.center.x
            LoafView.center.x = loafjetView.center.x
            LoafLabel.center.y = loafjetView.center.y + 110
            LoafView.center.y = loafjetView.center.y+45
            LoafImageView.frame = CGRect(x: LoafView.center.x - 50 , y: LoafView.frame.origin.y + 10, width: 100, height: 100)
        }completion: { (isCompleted) in
            UIView.animate(withDuration: 0.5, delay: duration, options: .curveEaseOut) {
                // top to bottom direction
                LoafLabel.center.y = loafjetView.center.y + 800
                LoafView.center.y = loafjetView.center.y + 800
                LoafImageView.center.y = loafjetView.center.y + 800
                // for dismisal of blur effect
                DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                    visualEffect.removeFromSuperview()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        LoafView.removeFromSuperview()
                    }
                }
            }
        }
    }
    
    //MARK:- Loader Loaf Method
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
    ///   - fontSize: Fonst size of Loaf
    ///   - fontColor: Font color of Loaf
    ///   - duration: Animation Duration
    ///   - wheelStyle: Activity Indicator type
    ///   - blurEffect: Blur Effect type
    ///   - loafjetView: UIView on which the Loaf is to be presented
    
    public static func LoafWheel(message: String, loafWidth:CGFloat = 50, loafHeight:CGFloat = 50, cornerRadius:CGFloat = 20, bgColor1:UIColor, bgColor2:UIColor, fontStyle: String = "Avenir-Medium", fontSize: CGFloat = 17, fontColor: UIColor = .black, duration: TimeInterval = 2.0, wheelStyle: UIActivityIndicatorView.Style = .white, blurEffect: UIBlurEffect.Style? = .regular ,loafWheelView: UIView) {
        
        LoafView.layer.sublayers = nil                // Important: to remove the previously added layer
        // LOAF VIEW METHOD
        LoafView.frame = CGRect(x: loafWheelView.center.x , y: loafWheelView.center.y, width: loafWidth, height: loafHeight)
        LoafView.layer.cornerRadius = cornerRadius
        LoafView.clipsToBounds = true
        LoafView.center.x = loafWheelView.center.x
        LoafView.center.y = loafWheelView.center.y
        // GRADIENT BG METHOD
        let gradientLayer: CAGradientLayer = {
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [bgColor1.cgColor, bgColor2.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
            gradientLayer.cornerRadius = cornerRadius
            LoafView.layer.insertSublayer(gradientLayer, at: 0)
            LoafView.clipsToBounds = true
            LoafView.backgroundColor = .none
            return gradientLayer
        }()
        gradientLayer.frame = LoafView.bounds
        // LOAF LABEL METHOD
        LoafLabel.frame = CGRect(x: loafWheelView.center.x, y: loafWheelView.center.y, width: loafWidth , height: loafHeight)
        LoafLabel.textAlignment = .center
        LoafLabel.text = message
        LoafLabel.font = UIFont(name: fontStyle, size: fontSize)
        LoafLabel.textColor = fontColor
        LoafLabel.center.x = loafWheelView.center.x
        LoafLabel.center.y = loafWheelView.center.y
        // Adding Indicator
        wheel.frame = CGRect(x: loafWheelView.center.x, y: loafWheelView.center.y, width: 50, height: 50)
        wheel.hidesWhenStopped = true
        wheel.startAnimating()
        wheel.frame.origin.x = LoafView.frame.origin.x
        wheel.center.y = LoafView.center.y
        // Apply Blur effect call
        applyBlurEffect(effect: blurEffect, view: loafWheelView)
        loafWheelView.addSubview(LoafView)
        loafWheelView.addSubview(LoafLabel)
        loafWheelView.addSubview(wheel)
        loafWheelView.isUserInteractionEnabled = false
        // for dismisal of blur effect
        DispatchQueue.main.asyncAfter(deadline: .now() + duration-0.4) {
            LoafLabel.removeFromSuperview()
            LoafView.removeFromSuperview()
            wheel.removeFromSuperview()
            visualEffect.removeFromSuperview()
            loafWheelView.isUserInteractionEnabled = true
        }
    }
    
    //MARK:- Loader Dismisal Method
    public static func dismissWheel(loafWheelView:UIView){
        LoafLabel.removeFromSuperview()
        LoafView.removeFromSuperview()
        wheel.removeFromSuperview()
        visualEffect.removeFromSuperview()
        loafWheelView.isUserInteractionEnabled = true
    }
}

//MARK:- Enumeration Keys

extension Loaf{
    //MARK:- Position Method
    
    public enum LoafPosition {
        case top
        case center
        case bottom
        fileprivate func centerPoint(view: UIView, width:CGFloat, height:CGFloat) -> CGRect{
            switch self {
            case .top:
                return CGRect(x: view.frame.origin.x, y: view.frame.origin.y+45, width: width, height: height)
            case .center:
                // return CGRect(x: view.frame.origin.x, y: view.center.y, width: width, height: height)
                return CGRect(x: view.center.x, y: view.center.y, width: width, height: height)
                
            case .bottom:
                //return CGRect(x: view.frame.origin.x, y: view.bounds.height-60, width: width, height: height)
                return CGRect(x: view.frame.origin.x-300, y: view.bounds.height-60, width: width, height: height)
            }
        }
    }
    
    //MARK:- Toast Animation Method
    public enum LoafAnimation {
        case Left
        case Right
        case Bottom
        case Top
    }
    
    //MARK:- Image verification method
    private static func verifyLoafImage(view: UIView,Image:String!, Width: CGFloat, Height: CGFloat){
        if Image == nil {
            // No image added
        }else{
            // If Image Added
            let LoafImage = UIImage(named: Image)
            LoafImageView.image = LoafImage!
            LoafImageView.frame = CGRect(x: LoafView.frame.origin.x+7, y: view.frame.origin.y, width: Width, height: Height)
            LoafImageView.frame.origin.x = LoafView.frame.origin.x
            LoafImageView.center.y = LoafView.center.y
        }
    }
    
    //MARK:- Blur effect method
    private static func applyBlurEffect(effect: UIBlurEffect.Style?, view: UIView){
        if effect == nil {
        }else{
            let blurEffect = UIBlurEffect(style: effect!)
            visualEffect.effect = blurEffect
            view.addSubview(visualEffect)
            visualEffect.frame = view.frame
        }
    }
}

//MARK:- ANimation Methods
extension Loaf{
    //MARK:- Loaf Animation
    private static func Animation(Direction: LoafAnimation, View: UIView, DelayTime: TimeInterval){
        if Direction == .Left {
            LoafLabel.center.x = View.center.x - 4000
            LoafView.center.x = View.center.x - 4000
            LoafImageView.center.x = LoafView.frame.origin.x - 4000
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                //  For left to right
                LoafLabel.center.x = View.center.x
                LoafView.center.x = View.center.x
                LoafImageView.center.x = LoafView.frame.origin.x+19
            }completion: { (isCompleted) in
                UIView.animate(withDuration: 0.5, delay: DelayTime, options: .curveEaseOut) {
                    LoafLabel.frame.origin.x += View.frame.maxX
                    LoafView.frame.origin.x += View.frame.maxX
                    LoafImageView.frame.origin.x += View.frame.maxX
                }
            }
            // Important: To remove the used view from the screen
            DispatchQueue.main.asyncAfter(deadline: .now() + DelayTime+1){
                LoafLabel.removeFromSuperview()
                LoafView.removeFromSuperview()
                LoafImageView.removeFromSuperview()
            }
        }
        else if Direction == .Right {
            // Placing the label in left to fix the position in the start
            LoafLabel.center.x = View.center.y
            LoafView.center.x = View.center.y
            LoafImageView.frame.origin.x = LoafView.frame.origin.x+19
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                LoafLabel.center.x = View.center.x
                LoafView.center.x = View.center.x
                LoafImageView.frame.origin.x = LoafView.frame.origin.x+19
            }completion: { (isCompleted) in
                UIView.animate(withDuration: 0.5, delay: DelayTime, options: .curveEaseOut) {
                    // centre to left direction
                    LoafLabel.frame.origin.x -= View.frame.maxX
                    LoafView.frame.origin.x -= View.frame.maxX
                    LoafImageView.frame.origin.x -= View.frame.maxX
                }
            }
            // Important: To remove the used view from the screen
            DispatchQueue.main.asyncAfter(deadline: .now() + DelayTime+1){
                LoafLabel.removeFromSuperview()
                LoafView.removeFromSuperview()
                LoafImageView.removeFromSuperview()
            }
        }
        else if Direction == .Bottom {
            LoafLabel.center.x = View.center.x
            LoafView.center.x = View.center.x
            LoafImageView.center.x = LoafView.frame.origin.x+29
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                // For bottom to top
                LoafLabel.frame.origin.y -= View.frame.origin.y+5
                LoafView.frame.origin.y -= View.frame.origin.y+5
                LoafImageView.frame.origin.y -= View.frame.origin.y+5
            }completion: { (isCompleted) in
                UIView.animate(withDuration: 0.5, delay: DelayTime, options: .curveEaseOut) {
                    // top to bottom direction
                    LoafLabel.frame.origin.y = View.frame.maxY
                    LoafView.frame.origin.y = View.frame.maxY
                    LoafImageView.frame.origin.y = View.frame.maxY
                }
            }
            // Important: To remove the used view from the screen
            DispatchQueue.main.asyncAfter(deadline: .now() + DelayTime+1){
                LoafLabel.removeFromSuperview()
                LoafView.removeFromSuperview()
                LoafImageView.removeFromSuperview()
            }
        }
        else if Direction == .Top {
            LoafLabel.center.x = View.center.x
            LoafView.center.x = View.center.x
            LoafImageView.frame.origin.x = LoafView.frame.origin.x+19
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                // For bottom to top
                LoafLabel.frame.origin.y += View.frame.origin.y+5
                LoafView.frame.origin.y += View.frame.origin.y+5
                LoafImageView.frame.origin.y += View.frame.origin.x+5
            }completion: { (isCompleted) in
                UIView.animate(withDuration: 1.5, delay: DelayTime, options: .curveEaseOut) {
                    
                    LoafLabel.frame.origin.y -= View.frame.midY
                    LoafView.frame.origin.y -= View.frame.midY
                    LoafImageView.frame.origin.y -= View.frame.midY
                }
            }
            // Important: To remove the used view from the screen
            DispatchQueue.main.asyncAfter(deadline: .now() + DelayTime+1){
                LoafLabel.removeFromSuperview()
                LoafView.removeFromSuperview()
                LoafImageView.removeFromSuperview()
                
            }
        }
    }
}

