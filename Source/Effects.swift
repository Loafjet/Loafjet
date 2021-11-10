//
//  Effects.swift
//  Loafjet
//
//  Created by Gokul Nair on 08/11/21.
//

import Foundation

//MARK: - Blur effect method
extension Loaf {
   
     static func applyBlurEffect(effect: UIBlurEffect.Style?, view: UIView){
        guard let effect = effect else {
            return
        }
        
        let blurEffect = UIBlurEffect(style: effect)
        visualEffect.effect = blurEffect
        view.addSubview(visualEffect)
        visualEffect.frame = view.frame
    }
}
