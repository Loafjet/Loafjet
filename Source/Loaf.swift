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
    static let toastImageView = UIImageView()
    
    //MARK:- Plain Toast Method
    
    /// Plain Loaf is a Loaf view with custom background and various position placement option.
    /// - Parameters:
    ///   - Message: Message to show on Loaf
    ///   - BGColor: Background color of  Loaf
    ///   - position: Where to place the Loaf
    ///   - ToastWidth: Width of Loaf
    ///   - ToastHeight: Height of Loaf
    ///   - CornerRadius: CornerRadius of Loaf
    ///   - FontStyle: Font style of Loaf
    ///   - FontSize: Fonst size of Loaf
    ///   - FontColor: Font color of Loaf
    ///   - ToastImage: Image to show on Loaf
    ///   - AnimationDirection: Loaf Animation Direction
    ///   - Duration: Animation Duration
    ///   - LoafjetView: UIView on which the Loaf is to be presented
    
    public static func PlainLoaf(Message: String, BGColor: UIColor = .gray, Position:LoafPosition, LoafWidth:CGFloat = 150 , LoafHeight:CGFloat = 40,CornerRadius: CGFloat = 20, FontStyle: String = "Avenir-Medium", FontSize: CGFloat = 17, FontColor: UIColor = .black, LoafImage: String? = nil , AnimationDirection: LoafAnimation , Duration: TimeInterval = 2.0, LoafjetView: UIView){
        
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
        verifyLoafImage(view: LoafjetView, Image: LoafImage)
        
        // Animation method call
        Animation(AnimationDirection: AnimationDirection, View: LoafjetView)

        // ADDING LOAF TO THE VIEW
        LoafjetView.addSubview(Loaf.LoafView)
        LoafjetView.addSubview(Loaf.LoafLabel)
        LoafjetView.addSubview(Loaf.toastImageView)
    }
    
    //MARK:- Loaf Animation
    
   public static func Animation(AnimationDirection: LoafAnimation, View: UIView){
        
        if AnimationDirection == .Left {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                
                //  For left to right
                
                Loaf.LoafLabel.center.x = View.center.x
                Loaf.LoafView.center.x = View.center.x
                Loaf.toastImageView.center.x = Loaf.LoafView.frame.origin.x+19
                
            }completion: { (isCompleted) in
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                        Loaf.LoafLabel.frame.origin.x += View.frame.maxX
                        Loaf.LoafView.frame.origin.x += View.frame.maxX
                        Loaf.toastImageView.frame.origin.x += View.frame.maxX
                    }
                }
            }
        }
        
        else if AnimationDirection == .Right {
            
            // Placing the label in left to fix the position in the start
            Loaf.LoafLabel.center.x = View.center.y
            Loaf.LoafView.center.x = View.center.y
            Loaf.toastImageView.center.x = Loaf.LoafView.frame.origin.x+19
            
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                Loaf.LoafLabel.center.x = View.center.x
                Loaf.LoafView.center.x = View.center.x
                Loaf.toastImageView.center.x = Loaf.LoafView.frame.origin.x+19
                
            }completion: { (isCompleted) in
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                        
                        // centre to left direction
                        
                        Loaf.LoafLabel.frame.origin.x -= View.frame.maxX
                        Loaf.LoafView.frame.origin.x -= View.frame.maxX
                        Loaf.toastImageView.frame.origin.x -= View.frame.maxX
                    }
                }
            }
        }
        else if AnimationDirection == .Bottom {
            
            Loaf.LoafLabel.center.x = View.center.x
            Loaf.LoafView.center.x = View.center.x
            Loaf.toastImageView.center.x = Loaf.LoafView.frame.origin.x+19
            
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                // For bottom to top
                
                Loaf.LoafLabel.frame.origin.y -= View.frame.origin.y+5
                Loaf.LoafView.frame.origin.y -= View.frame.origin.y+5
                Loaf.toastImageView.frame.origin.y -= View.frame.origin.y+5
                
            }completion: { (isCompleted) in
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                        // top to bottom direction
                        
                        Loaf.LoafLabel.frame.origin.y = View.frame.maxY
                        Loaf.LoafView.frame.origin.y = View.frame.maxY
                        Loaf.toastImageView.frame.origin.y = View.frame.maxY
                    }
                }
            }
        }
        else if AnimationDirection == .Top {
            
            Loaf.LoafLabel.center = View.center
            Loaf.LoafView.center = View.center
            Loaf.toastImageView.center.x = Loaf.LoafView.frame.origin.x+19
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                // For bottom to top
                
                Loaf.LoafLabel.frame.origin.y += View.frame.origin.y+5
                Loaf.LoafView.frame.origin.y += View.frame.origin.y+5
                Loaf.toastImageView.frame.origin.y += View.frame.origin.x
                
            }completion: { (isCompleted) in
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                        
                        Loaf.LoafLabel.frame.origin.y -= View.frame.maxY
                        Loaf.LoafView.frame.origin.y -= View.frame.maxY
                        Loaf.toastImageView.frame.origin.y -= View.frame.maxY
                    }
                }
            }
        }
    }
    
    //MARK:- Image verification method
    
    public static func verifyLoafImage(view: UIView,Image:String!){
        if Image == nil {
            // No image added
        }else{
            // If Image Added
            let LoafImage = UIImage(named: Image)
            Loaf.toastImageView.image = LoafImage!
            Loaf.toastImageView.frame = CGRect(x: Loaf.LoafView.frame.origin.x+7, y: view.frame.origin.y, width: 25, height: 25)
            Loaf.toastImageView.center.y = Loaf.LoafView.center.y
        }
    }
        
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
                    return CGRect(x: view.frame.origin.x, y: view.center.y, width: width, height: height)
                case .bottom:
                    // return CGRect(x: view.frame.origin.x, y: view.bounds.height-60, width: width, height: height)
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
        
        
    }
