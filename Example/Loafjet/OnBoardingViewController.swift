//
//  OnBoardingViewController.swift
//  Loafjet_Example
//
//  Created by Gokul Nair on 04/01/22.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit

class OnBoardingViewController: UIViewController {

    var introDelegate: showIntroDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
    @IBAction func imageTap(_ sender: Any) {
        hapticFeedback.haptic.lightFeedbackGenerator()
        UIApplication.shared.open(URL(string: "https://github.com/Loafjet/Loafjet")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func continueBtn(_ sender: Any) {
        core.shared.setIsNotNewUser()
        introDelegate?.showIntro()
        hapticFeedback.haptic.mediumFeedbackGenerator()
        self.dismiss(animated: true)
    }
}
