//
//  Utilities.swift
//  Loafjet_Example
//
//  Created by Gokul Nair on 04/01/22.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func presentAlert(title: String = "Error", message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
        
        DispatchQueue.main.async {
            self.present(alert, animated: true, completion: nil)
        }
    }
}
