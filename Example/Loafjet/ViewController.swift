//
//  ViewController.swift
//  Loafjet
//
//  Created by gokulnair2001 on 01/22/2021.
//  Copyright (c) 2021 gokulnair2001. All rights reserved.
//

import UIKit
import Loafjet

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
       
    }
    @IBAction func check(_ sender: Any) {
        
       // Loaf.PlainLoaf(Message: "Hello", Position: .bottom, AnimationDirection: .Left, LoafjetView: view)
        
        Loaf.PlainLoaf(Message: "Xcode Loading", BGColor: .systemBlue, Position: .bottom, LoafWidth: 190, LoafHeight: 40, CornerRadius: 10, FontStyle: "Avenir-Medium", FontSize: 15, FontColor: .white, LoafImage: "Xcode", AnimationDirection: .Top, Duration: 2, LoafjetView: view)
        
    }
}

