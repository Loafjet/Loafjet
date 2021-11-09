//
//  StudioViewController.swift
//  Loafjet_Example
//
//  Created by Gokul Nair on 09/11/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import Loafjet

class StudioViewController: UIViewController {

    @IBOutlet weak var studioView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func executeButton(_ sender: Any) {
        Loaf.PlainLoaf(message: "Welcome", position: .top, loafWidth: 250, loafHeight: 90, cornerRadius: 20, fontStyle: "Avenir-Medium", fontSize: 17, bgColor: .gray, fontColor: .black, alphaValue: 1.0, animationDirection: .top, duration: 2, loafjetView: studioView)
    }
    
}
