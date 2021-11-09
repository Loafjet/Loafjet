//
//  Animations.swift
//  Loafjet
//
//  Created by Gokul Nair on 08/11/21.
//

import Foundation

//MARK: - Animation Methods
extension Loaf{
    
    // Loaf Animation
    static func Animation(Direction: LoafAnimation, View: UIView, DelayTime: TimeInterval, LoafLabel: UILabel, LoafView: UIView, LoafImageView: UIImageView?){
        
        if Direction == .left {
            LoafView.center.x = View.frame.origin.x - LoafLabel.frame.width
            
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                //  LEFT -> RIGHT
                LoafView.center.x = View.center.x
            }completion: { _ in
                UIView.animate(withDuration: 0.5, delay: DelayTime, options: .curveEaseOut) {
                    // RIGHT -> LEFT
                    LoafView.frame.origin.x += View.frame.width
                }
            }
        }
        else if Direction == .right {
            // Placing the label in left to fix the position in the start
            LoafView.center.x = View.frame.width
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                // RIGHT -> LEFT
                LoafView.center.x = View.center.x
            }completion: { _ in
                UIView.animate(withDuration: 0.5, delay: DelayTime, options: .curveEaseOut) {
                    // LEFT -> RIGHT
                    LoafView.frame.origin.x = -View.frame.maxX
                }
            }
        }
        else if Direction == .bottom {
            LoafView.center.x = View.center.x
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                // BOTTOM -> TOP
                LoafView.frame.origin.y = View.frame.height - LoafView.frame.height - 20
            }completion: { _ in
                UIView.animate(withDuration: 0.5, delay: DelayTime, options: .curveEaseOut) {
                    // TOP -> BOTTOM
                    LoafView.frame.origin.y = View.frame.maxY
                }
            }
        }
        else if Direction == .top {
            LoafView.center.x = View.center.x
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
                // TOP -> BOTTOM
                LoafView.frame.origin.y = 40
            }completion: { _ in
                UIView.animate(withDuration: 1.5, delay: DelayTime, options: .curveEaseOut) {
                    // BOTTOM -> TOP
                    LoafView.frame.origin.y -= View.frame.midY
                }
            }
        }
    }
}

