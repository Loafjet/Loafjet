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
        
      // Loaf.PlainLoaf(Message: "Xcode Loading", BGColor: .systemBlue, Position: .top, LoafWidth: 190, LoafHeight: 40, CornerRadius: 10, FontStyle: "Avenir-Medium", FontSize: 15, FontColor: .white, LoafImage: "Xcode", AnimationDirection: .Top, Duration: 2, LoafjetView: view)
        
       // Loaf.GradientLoaf(Message: "Xcode Loading", Position: .bottom, BGColor1: .systemPink, BGColor2: .systemOrange, FontColor: .black, LoafImage: "Xcode", AnimationDirection: .Bottom, LoafjetView: view)
        
      Loaf.GradientLoaf(Message: "Xcode Loading", Position: .center, LoafWidth: 180, LoafHeight: 40, CornerRadius: 5, FontStyle: "Avenir-Medium", FontSize: 15, BGColor1: .systemPink, BGColor2: .systemOrange, FontColor: .black, LoafImage: "Xcode", AnimationDirection: .Left, Duration: 2, LoafjetView: view)
        
     //   Loaf.PopupCard(Message: "sdfsdhfgdjhgfhjsdgfsjdgfjsdhgfjhsgdhjfgshdfgsdjfjdhfsjdgfjsghghghghgghhghgghghzzzzzzz", Position: .bottom, LoafWidth: 250, LoafHeight: 300, CornerRadius: 20, FontStyle: "Avenir-Medium", FontSize: 15, BGColor1: .systemBlue, BGColor2: .systemPink, FontColor: .black, LoafImage: "Xcode", Duration: 2, LoafjetView: view)
        
       // Loaf.LoafWheel(Message: "Hello", LoafWidth: 180, LoafHeight: 90, CornerRadius: 10, BGColor1: .systemPink, BGColor2: .systemOrange, FontStyle: "Avenir", FontSize: 15, FontColor: .black, AnimationDirection: .Left,  Duration: .greatestFiniteMagnitude ,LoafWheelView: view)
        
       // Loaf.LoafWheel(Message: "Hello", LoafWidth: 200, LoafHeight: 100, CornerRadius: 20, BGColor1: .systemPink, BGColor2: .systemOrange, FontStyle: "Avenir", FontSize: 16, FontColor: .blue, Duration: .greatestFiniteMagnitude, LoafWheelView: view)
        
        
        
    }
}

