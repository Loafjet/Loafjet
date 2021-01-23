//
//  Loafjet.swift
//  Loafjet
//
//  Created by Gokul Nair on 22/01/21.
//

import Foundation
import UIKit


public class Loaf{
    
    static let LoafView = UIView()
    static  let LoafLabel = UILabel()
    static let LoafImageView = UIImageView()
    
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
    
    public static func PlainLoaf(Message: String, Position:LoafPosition, LoafWidth:CGFloat = 150 , LoafHeight:CGFloat = 40,CornerRadius: CGFloat = 20, FontStyle: String = "Avenir-Medium", FontSize: CGFloat = 17, BGColor: UIColor = .gray,FontColor: UIColor = .black, LoafImage: String? = nil , AnimationDirection: LoafAnimation , Duration: TimeInterval = 2.0, LoafjetView: UIView){
        
        // LOAF VIEW METHOD
        
        Loaf.LoafView.frame = Position.centerPoint(view: LoafjetView, width: LoafWidth, height: LoafHeight)
        Loaf.LoafView.backgroundColor = BGColor
        Loaf.LoafView.layer.cornerRadius = CornerRadius
        Loaf.LoafView.clipsToBounds = true
        
        // LOAF LABEL METHOD
        
        Loaf.LoafLabel.frame = CGRect(x: Loaf.LoafView.frame.origin.x, y: Loaf.LoafView.frame.origin.y, width: LoafWidth , height: LoafHeight)
        Loaf.LoafLabel.textAlignment = .center
        Loaf.LoafLabel.text = Message
        Loaf.LoafLabel.font = UIFont(name: FontStyle, size: FontSize)
        Loaf.LoafLabel.textColor = FontColor
        Loaf.LoafLabel.numberOfLines = 3
        Loaf.LoafLabel.center.y = Loaf.LoafView.center.y
        
        // LOAF IMAGE METHOD CALL
        verifyLoafImage(view: LoafjetView, Image: LoafImage, Width: 25, Height: 25)
        
        // Animation method call
        Animation(Direction: AnimationDirection, View: LoafjetView, DelayTime: Duration)
        
        // ADDING LOAF TO THE VIEW
        LoafjetView.addSubview(Loaf.LoafView)
        LoafjetView.addSubview(Loaf.LoafLabel)
        LoafjetView.addSubview(Loaf.LoafImageView)
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
        
        // LOAF VIEW METHOD
        
        Loaf.LoafView.frame = Position.centerPoint(view: LoafjetView, width: LoafWidth, height: LoafHeight)
        Loaf.LoafView.layer.cornerRadius = CornerRadius
        Loaf.LoafView.clipsToBounds = true
        
        // LOAF LABEL METHOD
        
        Loaf.LoafLabel.frame = CGRect(x: Loaf.LoafView.frame.origin.x, y: Loaf.LoafView.frame.origin.y, width: LoafWidth , height: LoafHeight)
        Loaf.LoafLabel.textAlignment = .center
        Loaf.LoafLabel.text = Message
        Loaf.LoafLabel.font = UIFont(name: FontStyle, size: FontSize)
        Loaf.LoafLabel.textColor = FontColor
        Loaf.LoafLabel.center.y = Loaf.LoafView.center.y
        
        
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
        LoafjetView.addSubview(Loaf.LoafView)
        LoafjetView.addSubview(Loaf.LoafLabel)
        LoafjetView.addSubview(Loaf.LoafImageView)
        
        
    }
    
    
}

//MARK:- Popup Card Method

extension Loaf{
    
    public static func PopupCard(Message: String, Position:LoafPosition, LoafWidth:CGFloat = 150,LoafHeight:CGFloat = 40,CornerRadius: CGFloat = 20, FontStyle: String = "Avenir-Medium", FontSize: CGFloat = 17, BGColor1: UIColor, BGColor2: UIColor, FontColor: UIColor,LoafImage: String?, Duration: TimeInterval = 2.0, LoafjetView: UIView) {
        
        
        
        // LOAF VIEW METHOD
        
        Loaf.LoafView.frame = CGRect(x: LoafjetView.center.x, y: LoafjetView.center.y, width: LoafWidth, height: LoafHeight)
        Loaf.LoafView.layer.cornerRadius = CornerRadius
        Loaf.LoafView.clipsToBounds = true
        
        // LOAF LABEL METHOD
        
        Loaf.LoafLabel.frame = CGRect(x: Loaf.LoafView.frame.origin.x, y: Loaf.LoafView.frame.origin.y, width: LoafWidth , height: LoafHeight)
        Loaf.LoafLabel.textAlignment = .center
        Loaf.LoafLabel.numberOfLines = 5
        Loaf.LoafLabel.text = Message
        Loaf.LoafLabel.font = UIFont(name: FontStyle, size: FontSize)
        Loaf.LoafLabel.textColor = FontColor
        Loaf.LoafLabel.numberOfLines = 3
        Loaf.LoafLabel.center.y = Loaf.LoafView.center.y
        Loaf.LoafLabel.textAlignment = .center
        
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
        
        // Animation method call
        
        LoafjetView.addSubview(Loaf.LoafView)
        LoafjetView.addSubview(Loaf.LoafLabel)
        LoafjetView.addSubview(Loaf.LoafImageView)
        
        Loaf.LoafLabel.center.x = LoafjetView.center.x
        Loaf.LoafView.center.x = LoafjetView.center.x
        Loaf.LoafLabel.center.y = LoafjetView.center.y + 4000
        Loaf.LoafView.center.y = LoafjetView.center.y + 4000
        Loaf.LoafImageView.center.y = LoafjetView.center.y + 4000
        Loaf.LoafImageView.center.x = LoafjetView.center.x
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
            // For bottom to top
            Loaf.LoafLabel.center.x = LoafjetView.center.x
            Loaf.LoafView.center.x = LoafjetView.center.x
            Loaf.LoafLabel.center.y = LoafjetView.center.y + 40
            Loaf.LoafView.center.y = LoafjetView.center.y+45
            Loaf.LoafImageView.center.y = LoafjetView.center.y - 40
            Loaf.LoafImageView.center.x = LoafjetView.center.x
            
        }completion: { (isCompleted) in
                UIView.animate(withDuration: 0.5, delay: Duration, options: .curveEaseOut) {
                    // top to bottom direction
                    Loaf.LoafLabel.center.y = LoafjetView.center.y + 800
                    Loaf.LoafView.center.y = LoafjetView.center.y + 800
                    Loaf.LoafImageView.center.y = LoafjetView.center.y + 800
                }
        }
    }
    
    //MARK:- Loader Loaf Method
    
    // @available(iOS 13.0, *)
    public static func LoafWheel(Message: String, LoafWidth:CGFloat = 50, LoafHeight:CGFloat = 50, CornerRadius:CGFloat = 20, BGColor1:UIColor, BGColor2:UIColor,FontStyle: String = "Avenir-Medium", FontSize: CGFloat = 17, FontColor: UIColor = .black, Duration: TimeInterval = 2.0, LoafWheelView: UIView) {
        
        // LOAF VIEW METHOD
        
        Loaf.LoafView.frame = CGRect(x: LoafWheelView.center.x, y: LoafWheelView.center.y, width: LoafWidth, height: LoafHeight)
        Loaf.LoafView.layer.cornerRadius = CornerRadius
        Loaf.LoafView.clipsToBounds = true
        
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
        
        Loaf.LoafLabel.frame = CGRect(x: Loaf.LoafView.frame.origin.x, y: Loaf.LoafView.frame.origin.y, width: LoafWidth , height: LoafHeight)
        Loaf.LoafLabel.textAlignment = .center
        Loaf.LoafLabel.text = Message
        Loaf.LoafLabel.font = UIFont(name: FontStyle, size: FontSize)
        Loaf.LoafLabel.textColor = FontColor
        Loaf.LoafLabel.center.y = Loaf.LoafView.center.y
        
        // Adding Indicator
        
        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: LoafView.frame.origin.x + 5, y: LoafView.frame.origin.y - 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.activityIndicatorViewStyle = UIActivityIndicatorView.Style.white
        loadingIndicator.startAnimating();
        loadingIndicator.center.y = LoafWheelView.center.y
        
        
        LoafWheelView.addSubview(Loaf.LoafView)
        LoafWheelView.addSubview(Loaf.LoafLabel)
        LoafWheelView.addSubview(loadingIndicator)
        
        wheelAnimation(DelayTime: Duration, view: LoafWheelView, wheel: loadingIndicator)
    }
    
    //MARK:- Loaf Wheel animation
    
    private static func wheelAnimation(DelayTime: TimeInterval, view: UIView, wheel: UIActivityIndicatorView){
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
            Loaf.LoafView.center.x = view.center.x
            Loaf.LoafLabel.center.x = view.center.x
            Loaf.LoafView.center.y = view.center.y
            Loaf.LoafLabel.center.y = view.center.y
        }completion: { (isCompleted) in
            UIView.animate(withDuration: 0.5, delay: DelayTime, options: .curveEaseOut) {
                
                Loaf.LoafLabel.removeFromSuperview()
                Loaf.LoafView.removeFromSuperview()
                wheel.removeFromSuperview()
            }
        }
    }
    
    //MARK:- Loader Dismisal Method
    
    func dismissWheel(){
        
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
    
    public  enum LoafAnimation {
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
            Loaf.LoafImageView.image = LoafImage!
            Loaf.LoafImageView.frame = CGRect(x: Loaf.LoafView.frame.origin.x+7, y: view.frame.origin.y, width: Width, height: Height)
            Loaf.LoafImageView.center.y = Loaf.LoafView.center.y
        }
    }
}


//MARK:- ANimation Methods

extension Loaf{
    //MARK:- Loaf Animation
    
    private static func Animation(Direction: LoafAnimation, View: UIView, DelayTime: TimeInterval){
        
        if Direction == .Left {
            Loaf.LoafLabel.center.x = View.center.x - 4000
            Loaf.LoafView.center.x = View.center.x - 4000
            Loaf.LoafImageView.center.x = Loaf.LoafView.frame.origin.x - 4000
            
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                
                //  For left to right
                
                Loaf.LoafLabel.center.x = View.center.x
                Loaf.LoafView.center.x = View.center.x
                Loaf.LoafImageView.center.x = Loaf.LoafView.frame.origin.x+19
                
            }completion: { (isCompleted) in
                UIView.animate(withDuration: 0.5, delay: DelayTime, options: .curveEaseOut) {
                    Loaf.LoafLabel.frame.origin.x += View.frame.maxX
                    Loaf.LoafView.frame.origin.x += View.frame.maxX
                    Loaf.LoafImageView.frame.origin.x += View.frame.maxX
                }
            }
        }
        
        else if Direction == .Right {
            
            // Placing the label in left to fix the position in the start
            Loaf.LoafLabel.center.x = View.center.y
            Loaf.LoafView.center.x = View.center.y
            Loaf.LoafImageView.center.x = Loaf.LoafView.frame.origin.x+19
            
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                Loaf.LoafLabel.center.x = View.center.x
                Loaf.LoafView.center.x = View.center.x
                Loaf.LoafImageView.center.x = Loaf.LoafView.frame.origin.x+19
                
            }completion: { (isCompleted) in
                UIView.animate(withDuration: 0.5, delay: DelayTime, options: .curveEaseOut) {
                    
                    // centre to left direction
                    
                    Loaf.LoafLabel.frame.origin.x -= View.frame.maxX
                    Loaf.LoafView.frame.origin.x -= View.frame.maxX
                    Loaf.LoafImageView.frame.origin.x -= View.frame.maxX
                }
            }
        }
        else if Direction == .Bottom {
            
            Loaf.LoafLabel.center.x = View.center.x
            Loaf.LoafView.center.x = View.center.x
            Loaf.LoafImageView.center.x = Loaf.LoafView.frame.origin.x+19
            
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                // For bottom to top
                
                Loaf.LoafLabel.frame.origin.y -= View.frame.origin.y+5
                Loaf.LoafView.frame.origin.y -= View.frame.origin.y+5
                Loaf.LoafImageView.frame.origin.y -= View.frame.origin.y+5
                
            }completion: { (isCompleted) in
                UIView.animate(withDuration: 0.5, delay: DelayTime, options: .curveEaseOut) {
                    // top to bottom direction
                    
                    Loaf.LoafLabel.frame.origin.y = View.frame.maxY
                    Loaf.LoafView.frame.origin.y = View.frame.maxY
                    Loaf.LoafImageView.frame.origin.y = View.frame.maxY
                }
            }
        }
        
        else if Direction == .Top {
            
            Loaf.LoafLabel.center.x = View.center.x
            Loaf.LoafView.center.x = View.center.x
            Loaf.LoafImageView.center.x = Loaf.LoafView.frame.origin.x+19
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                // For bottom to top
                
                Loaf.LoafLabel.frame.origin.y += View.frame.origin.y+5
                Loaf.LoafView.frame.origin.y += View.frame.origin.y+5
                Loaf.LoafImageView.frame.origin.y += View.frame.origin.x+5
                
            }completion: { (isCompleted) in
                UIView.animate(withDuration: 0.5, delay: DelayTime, options: .curveEaseOut) {
                    
                    Loaf.LoafLabel.frame.origin.y -= View.frame.midY
                    Loaf.LoafView.frame.origin.y -= View.frame.midY
                    Loaf.LoafImageView.frame.origin.y -= View.frame.midY
                }
            }
        }
    }
    
}

