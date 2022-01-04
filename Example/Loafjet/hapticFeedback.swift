//
//  hapticFeedback.swift
//  Loafjet_Example
//
//  Created by Gokul Nair on 04/01/22.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation
import AVKit

class hapticFeedback {
    
    static let haptic = hapticFeedback()
    
    func successFeedbackGenerator() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
    
    func errorFeedbackGenerator() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.error)
    }
    
    func lightFeedbackGenerator() {
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.impactOccurred()
    }
    
    func mediumFeedbackGenerator() {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    }
}

