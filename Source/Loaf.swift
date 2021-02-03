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
    ///   - Message: Message to show on Loaf
    ///   - Position: Where to place the Loaf
    ///   - LoafWidth: Width of Loaf
    ///   - LoafHeight: Height of Loaf
    ///   - CornerRadius: CornerRadius of Loaf
    ///   - FontStyle: Font style of Loaf
    ///   - FontSize: Fonst size of Loaf
    ///   - FontColor: Font color of Loaf
    ///   - BGColor: Background color of  Loaf
    ///   - LoafImage: Image to show on Loaf
    ///   - AnimationDirection: Loaf Animation Direction
    ///   - Duration: Animation Duration
    ///   - LoafjetView: UIView on which the Loaf is to be presented
    
    public static func PlainLoaf(Message: String, Position:LoafPosition, LoafWidth:CGFloat = 200 , LoafHeight:CGFloat = 40,CornerRadius: CGFloat = 20, FontStyle: String = "Avenir-Medium", FontSize: CGFloat = 17, BGColor: UIColor = .gray,FontColor: UIColor = .black, LoafImage: String? = nil , AnimationDirection: LoafAnimation , Duration: TimeInterval = 3.0, LoafjetView: UIView){
        
        LoafView.layer.sublayers = nil                // Important: to remove the previously added layer
        
        // LOAF VIEW METHOD
        LoafView.frame = Position.centerPoint(view: LoafjetView, width: LoafWidth, height: LoafHeight)
        LoafView.backgroundColor = BGColor
        LoafView.layer.cornerRadius = CornerRadius
        LoafView.clipsToBounds = true
        
        // LOAF LABEL METHOD
        LoafLabel.frame = CGRect(x: Loaf.LoafView.frame.origin.x, y: Loaf.LoafView.frame.origin.y, width: LoafWidth , height: LoafHeight)
        LoafLabel.textAlignment = .center
        LoafLabel.text = Message
        LoafLabel.font = UIFont(name: FontStyle, size: FontSize)
        LoafLabel.textColor = FontColor
        LoafLabel.numberOfLines = 3
        LoafLabel.center.y = Loaf.LoafView.center.y
        
        // LOAF IMAGE METHOD CALL
        verifyLoafImage(view: LoafjetView, Image: LoafImage, Width: 25, Height: 25)
        
        // Animation method call
        Animation(Direction: AnimationDirection, View: LoafjetView, DelayTime: Duration)
        
        // ADDING LOAF TO THE VIEW
        LoafjetView.addSubview(LoafView)
        LoafjetView.addSubview(LoafLabel)
        LoafjetView.addSubview(LoafImageView)
    }
    
    //MARK:- Gradient Loaf Method
    
    /// Gradient Loafis a Loaf view with different types of gradient background and various position placement support.
    /// - Parameters:
    ///   - Message: Message to show on Loaf
    ///   - Position: Where to place the Loaf
    ///   - LoafWidth: Width of Loaf
    ///   - LoafHeight: Height of Loaf
    ///   - CornerRadius: CornerRadius of Loaf
    ///   - FontStyle: Font style of Loaf
    ///   - FontSize: Fonst size of Loaf
    ///   - BGColor1: Gradient color 1
    ///   - BGColor2: Gradient color 2
    ///   - FontColor: Font color of Loaf
    ///   - LoafImage: Image to show on Loaf
    ///   - AnimationDirection: Loaf Animation Direction
    ///   - Duration: Animation Duration
    ///   - LoafjetView: UIView on which the Loaf is to be presented
    
    public static func GradientLoaf(Message: String, Position:LoafPosition, LoafWidth:CGFloat = 150,LoafHeight:CGFloat = 40,CornerRadius: CGFloat = 20, FontStyle: String = "Avenir-Medium", FontSize: CGFloat = 17, BGColor1: UIColor, BGColor2: UIColor, FontColor: UIColor,LoafImage: String?, AnimationDirection: LoafAnimation, Duration: TimeInterval = 2.0, LoafjetView: UIView) {
        
        LoafView.layer.sublayers = nil                // Important: to remove the previously added layer
        // LOAF VIEW METHOD
        LoafView.frame = Position.centerPoint(view: LoafjetView, width: LoafWidth, height: LoafHeight)
        LoafView.layer.cornerRadius = CornerRadius
        LoafView.clipsToBounds = true
        
        // LOAF LABEL METHOD
        LoafLabel.frame = CGRect(x: Loaf.LoafView.frame.origin.x, y: Loaf.LoafView.frame.origin.y, width: LoafWidth , height: LoafHeight)
        LoafLabel.textAlignment = .center
        LoafLabel.text = Message
        LoafLabel.font = UIFont(name: FontStyle, size: FontSize)
        LoafLabel.textColor = FontColor
        LoafLabel.center.y = Loaf.LoafView.center.y
        
        // GRADIENT BG METHOD
        let gradientLayer: CAGradientLayer = {
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [BGColor1.cgColor, BGColor2.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
            gradientLayer.cornerRadius = CornerRadius
            LoafView.layer.insertSublayer(gradientLayer, at: 0)
            LoafView.clipsToBounds = true
            LoafView.backgroundColor = .none
            return gradientLayer
        }()
        gradientLayer.frame = LoafView.bounds
        
        // LOAF IMAGE METHOD CALL
        verifyLoafImage(view: LoafjetView, Image: LoafImage, Width: 25, Height: 25)
        
        // Animation method call
        Animation(Direction: AnimationDirection, View: LoafjetView, DelayTime: Duration)
        
        // ADDING LOAF TO THE VIEW
        LoafjetView.addSubview(LoafView)
        LoafjetView.addSubview(LoafLabel)
        LoafjetView.addSubview(LoafImageView)
    }
}

//MARK:- Popup Card Method

extension Loaf{
    
    /// PopupCard is a card animation used to display quick info on screen.
    /// - Parameters:
    ///   - Message: Message to show on Card
    ///   - LoafWidth: Width of Card
    ///   - LoafHeight: Height of Card
    ///   - CornerRadius: CornerRadius of Card
    ///   - FontStyle: Font style of Card
    ///   - FontSize: Fonst size of Card
    ///   - BGColor1: Gradient color 1
    ///   - BGColor2: Gradient color 2
    ///   - FontColor: Font color of Card
    ///   - LoafImage: Image to show on Card
    ///   - Duration: Animation Duration
    ///   - LoafjetView: UIView on which the Card is to be presented
    
    public static func PopupCard(Message: String, LoafWidth:CGFloat = 150,LoafHeight:CGFloat = 40,CornerRadius: CGFloat = 20, FontStyle: String = "Avenir-Medium", FontSize: CGFloat = 17, BGColor1: UIColor, BGColor2: UIColor, FontColor: UIColor,LoafImage: String?, Duration: TimeInterval = 2.0, BlurEffect: UIBlurEffect.Style?, LoafjetView: UIView) {
        
        LoafView.layer.sublayers = nil                // Important: to remove the previously added layer
        
        // LOAF VIEW METHOD
        LoafView.frame = CGRect(x: LoafjetView.center.x, y: LoafjetView.center.y, width: LoafWidth, height: LoafHeight)
        LoafView.layer.cornerRadius = CornerRadius
        LoafView.clipsToBounds = true
        
        // LOAF LABEL METHOD
        LoafLabel.frame = CGRect(x: Loaf.LoafView.frame.origin.x, y: Loaf.LoafView.frame.origin.y, width: LoafWidth-8 , height: LoafHeight-120)
        LoafLabel.textAlignment = .center
        LoafLabel.numberOfLines = 5
        LoafLabel.text = Message
        LoafLabel.font = UIFont(name: FontStyle, size: FontSize)
        LoafLabel.textColor = FontColor
        LoafLabel.numberOfLines = .max
        LoafLabel.center.y = LoafView.center.y
        LoafLabel.textAlignment = .center
        
        // GRADIENT BG METHOD
        let gradientLayer: CAGradientLayer = {
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [BGColor1.cgColor, BGColor2.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
            gradientLayer.cornerRadius = CornerRadius
            LoafView.layer.insertSublayer(gradientLayer, at: 0)
            LoafView.clipsToBounds = true
            LoafView.backgroundColor = .none
            return gradientLayer
        }()
        gradientLayer.frame = LoafView.bounds
        // LOAF IMAGE METHOD CALL
        verifyLoafImage(view: LoafjetView, Image: LoafImage, Width: 100, Height: 100)
        
        // Blur Effect call
        applyBlurEffect(effect: BlurEffect, view: LoafjetView)
        
        // Animation method call
        LoafjetView.addSubview(LoafView)
        LoafjetView.addSubview(LoafLabel)
        LoafjetView.addSubview(LoafImageView)
        
        LoafLabel.center.x = LoafjetView.center.x
        LoafView.center.x = LoafjetView.center.x
        LoafLabel.center.y = LoafjetView.center.y + 4000
        LoafView.center.y = LoafjetView.center.y + 4000
        LoafImageView.center.y = LoafjetView.center.y + 4000
        LoafImageView.center.x = LoafjetView.center.x
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
            // For bottom to top
            LoafLabel.center.x = LoafjetView.center.x
            LoafView.center.x = LoafjetView.center.x
            LoafLabel.center.y = LoafjetView.center.y + 110
            LoafView.center.y = LoafjetView.center.y+45
            LoafImageView.center.y = LoafjetView.center.y - 40
            LoafImageView.center.x = LoafjetView.center.x
        }completion: { (isCompleted) in
            UIView.animate(withDuration: 0.5, delay: Duration, options: .curveEaseOut) {
                // top to bottom direction
                LoafLabel.center.y = LoafjetView.center.y + 800
                LoafView.center.y = LoafjetView.center.y + 800
                LoafImageView.center.y = LoafjetView.center.y + 800
            }
            // for dismisal of blur effect
            DispatchQueue.main.asyncAfter(deadline: .now() + Duration-0.4) {
                visualEffect.removeFromSuperview()
            }
        }
    }
    
    //MARK:- Loader Loaf Method
    
    
    @available(iOS 12.0, *)
    
    /// LoafWheel is a custom loader view with gradient background support
    /// - Parameters:
    ///   - Message: Message to show on Loaf
    ///   - LoafWidth: Width of Loaf
    ///   - LoafHeight: Height of Loaf
    ///   - CornerRadius: CornerRadius of Loaf
    ///   - BGColor1: Gradient color 1
    ///   - BGColor2: Gradient color 2
    ///   - FontStyle: Font style of Loaf
    ///   - FontSize: Fonst size of Loaf
    ///   - FontColor: Font color of Loaf
    ///   - Duration: Animation Duration
    ///   - WheelStyle: Activity Indicator type
    ///   - BlurEffect: Blur Effect type
    ///   - LoafjetView: UIView on which the Loaf is to be presented
    public static func LoafWheel(Message: String, LoafWidth:CGFloat = 50, LoafHeight:CGFloat = 50, CornerRadius:CGFloat = 20, BGColor1:UIColor, BGColor2:UIColor,FontStyle: String = "Avenir-Medium", FontSize: CGFloat = 17, FontColor: UIColor = .black, Duration: TimeInterval = 2.0, WheelStyle: UIActivityIndicatorView.Style = .white, BlurEffect: UIBlurEffect.Style? = .regular ,LoafWheelView: UIView) {
        
        LoafView.layer.sublayers = nil                // Important: to remove the previously added layer
        // LOAF VIEW METHOD
        LoafView.frame = CGRect(x: LoafWheelView.center.x , y: LoafWheelView.center.y, width: LoafWidth, height: LoafHeight)
        LoafView.layer.cornerRadius = CornerRadius
        LoafView.clipsToBounds = true
        LoafView.center.x = LoafWheelView.center.x
        LoafView.center.y = LoafWheelView.center.y
        // GRADIENT BG METHOD
        let gradientLayer: CAGradientLayer = {
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [BGColor1.cgColor, BGColor2.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
            gradientLayer.cornerRadius = CornerRadius
            LoafView.layer.insertSublayer(gradientLayer, at: 0)
            LoafView.clipsToBounds = true
            LoafView.backgroundColor = .none
            return gradientLayer
        }()
        gradientLayer.frame = LoafView.bounds
        // LOAF LABEL METHOD
        LoafLabel.frame = CGRect(x: LoafWheelView.center.x, y: LoafWheelView.center.y, width: LoafWidth , height: LoafHeight)
        LoafLabel.textAlignment = .center
        LoafLabel.text = Message
        LoafLabel.font = UIFont(name: FontStyle, size: FontSize)
        LoafLabel.textColor = FontColor
        LoafLabel.center.x = LoafWheelView.center.x
        LoafLabel.center.y = LoafWheelView.center.y
        // Adding Indicator
        wheel.frame = CGRect(x: LoafWheelView.center.x, y: LoafWheelView.center.y, width: 50, height: 50)
        wheel.hidesWhenStopped = true
        wheel.startAnimating()
        wheel.frame.origin.x = LoafView.frame.origin.x
        wheel.center.y = LoafView.center.y
        // Apply Blur effect call
        applyBlurEffect(effect: BlurEffect, view: LoafWheelView)
        LoafWheelView.addSubview(LoafView)
        LoafWheelView.addSubview(LoafLabel)
        LoafWheelView.addSubview(wheel)
        LoafWheelView.isUserInteractionEnabled = false
        // for dismisal of blur effect
        DispatchQueue.main.asyncAfter(deadline: .now() + Duration-0.4) {
            LoafLabel.removeFromSuperview()
            LoafView.removeFromSuperview()
            wheel.removeFromSuperview()
            visualEffect.removeFromSuperview()
            LoafWheelView.isUserInteractionEnabled = true
        }
    }
    
    //MARK:- Loader Dismisal Method
    public static func dismissWheel(LoafWheelView:UIView){
        LoafLabel.removeFromSuperview()
        LoafView.removeFromSuperview()
        wheel.removeFromSuperview()
        visualEffect.removeFromSuperview()
        LoafWheelView.isUserInteractionEnabled = true
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

