//
//  StudioViewController.swift
//  Loafjet_Example
//
//  Created by Gokul Nair on 09/11/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import Loafjet

@available(iOS 14.0, *)
class StudioViewController: UIViewController {
    
    @IBOutlet weak var studioView: UIView!
    
    @IBOutlet weak var messageTF: UITextField!
    @IBOutlet weak var widthTF: UITextField!
    @IBOutlet weak var heightTF: UITextField!
    @IBOutlet weak var fontStyleTF: UITextField!
    
    @IBOutlet weak var sizeLabel: UILabel!
    
    @IBOutlet weak var bgBtn: UIButton!
    @IBOutlet weak var bg1Btn: UIButton!
    @IBOutlet weak var bg2Btn: UIButton!
    @IBOutlet weak var fontBtn: UIButton!
    @IBOutlet weak var imageNameTF: UITextField!
    @IBOutlet weak var durationTF: UITextField!
    
    // PARAMETERS
    var loafType = 0
    var positionType:Loaf.LoafPosition = .top
    var animationType:Loaf.LoafAnimation = .top
    var cornerRadius:CGFloat = 5
    var fontSize:CGFloat = 17
    var alpha:CGFloat = 1
    var selectedColor:UIColor = .yellow
    var selectColorFor = 0
    var bgColor:UIColor = .systemIndigo
    var fontColor:UIColor = .black
    var bg1Color:UIColor = .systemYellow
    var bg2Color:UIColor = .systemRed
    var blurType:UIBlurEffect.Style = .regular
    var wheelType:UIActivityIndicatorView.Style = .medium
    
    var colorPicker = UIColorPickerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorPicker.delegate = self
        
        //MARK:- keyboard dismissal method
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        tap.cancelsTouchesInView = false
        
        UIApplication.shared.windows.forEach { window in
            view.overrideUserInterfaceStyle = .light
        }
    }
    
    // Keyboard dismiss method
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func dismissButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func executeButton(_ sender: Any) {
        
        if messageTF.text?.trimmingCharacters(in: .whitespaces) == "" {
            switch loafType {
            case 0:
                messageTF.text = "Loafjet"
            case 1:
                messageTF.text = "Loafjet"
            case 2:
                messageTF.text = "Loafjet is a custom library used to add Toast, Popup Card and Loading indicator in your Swift project."
            case 3:
                messageTF.text = "LoafJet loading!"
            default:
                messageTF.text = "Loafjet"
            }
        }
        
        if widthTF.text?.trimmingCharacters(in: .whitespaces) == "" {
            widthTF.text = "250"
        }
       
        if heightTF.text?.trimmingCharacters(in: .whitespaces) == "" {
            switch loafType {
            case 0:
                heightTF.text = "50"
            case 1:
                heightTF.text = "50"
            case 2:
                heightTF.text = "300"
            case 3:
                heightTF.text = "110"
            default:
                heightTF.text = "50"
            }
        }
        
        if fontStyleTF.text?.trimmingCharacters(in: .whitespaces) == "" {
            fontStyleTF.text = "Avenir-Medium"
        }
        
        if imageNameTF.text?.trimmingCharacters(in: .whitespaces) == "" {
            imageNameTF.text = "Logo"
        }
        
        if durationTF.text?.trimmingCharacters(in: .whitespaces) == "" {
            durationTF.text = "2"
        }
        
        
        switch loafType {
        case 0:
            Loaf.PlainLoaf(message: messageTF.text!, position: positionType, loafWidth: CGFloat(Double(widthTF.text!) ?? 250), loafHeight: CGFloat(Double(heightTF.text!) ?? 50), cornerRadius: cornerRadius, fontStyle: fontStyleTF.text!, fontSize: fontSize, bgColor: bgColor, fontColor: fontColor, alphaValue: alpha, loafImage: imageNameTF.text!, animationDirection: animationType, duration: TimeInterval(durationTF.text!) ?? 2, loafjetView: studioView)
        case 1:
            Loaf.GradientLoaf(message: messageTF.text!, position: positionType, loafWidth: CGFloat(Double(widthTF.text!) ?? 250), loafHeight: CGFloat(Double(heightTF.text!) ?? 50), cornerRadius: cornerRadius, fontStyle: fontStyleTF.text!, fontSize: fontSize, bgColor1: bg1Color, bgColor2: bg2Color, fontColor: fontColor, loafImage: imageNameTF.text!, animationDirection: animationType, duration: TimeInterval(durationTF.text!) ?? 2, loafjetView: studioView)
        case 2:
            Loaf.PopupCard(message: messageTF.text!, loafWidth: CGFloat(Double(widthTF.text!) ?? 250), loafHeight: CGFloat(Double(heightTF.text!) ?? 300), cornerRadius: cornerRadius, fontStyle: fontStyleTF.text!, fontSize: fontSize, bgColor1: bg1Color, bgColor2: bg2Color, fontColor: fontColor, loafImage: imageNameTF.text!, duration: TimeInterval(durationTF.text!) ?? 2, blurEffect: blurType, loafjetView: studioView)
        case 3:
            Loaf.LoafWheel(message: messageTF.text!, loafWidth: CGFloat(Double(widthTF.text!) ?? 250), loafHeight: CGFloat(Double(heightTF.text!) ?? 300), cornerRadius: cornerRadius, bgColor1: bg1Color, bgColor2: bg2Color, fontStyle: fontStyleTF.text!, fontSize: fontSize, fontColor: fontColor, duration: TimeInterval(durationTF.text!) ?? 2, wheelStyle: wheelType, blurEffect: blurType, loafWheelView: studioView)
        default:
            Loaf.PlainLoaf(message: "Welcome", position: .top, loafWidth: 250, loafHeight: 90, cornerRadius: 20, fontStyle: "Avenir-Medium", fontSize: 17, bgColor: .gray, fontColor: .black, alphaValue: 1.0, animationDirection: .top, duration: 2, loafjetView: studioView)
        }
        
    }
    
    @IBAction func loafSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            loafType = 0
            sizeLabel.text = " Width (>240) x Height (90-40)"
        case 1:
            loafType = 1
            sizeLabel.text = " Width (>240) x Height (90-40)"
        case 2:
            loafType = 2
            sizeLabel.text = " Width (>250) x Height (>300)"
        case 3:
            loafType = 3
            sizeLabel.text = " Width (>100) x Height (>100)"
        default:
            break
        }
    }
    
    @IBAction func positionSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            positionType = .top
        case 1:
            positionType = .centre
        case 2:
            positionType = .bottom
        default:
            break
        }
    }
    
    @IBAction func animationSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            animationType = .top
        case 1:
            animationType = .bottom
        case 2:
            animationType = .right
        case 3:
            animationType = .left
        default:
            break
        }
    }
    
    @IBAction func cornerRadiusSlider(_ sender: UISlider) {
        cornerRadius = CGFloat(Int(sender.value))
    }
    
    @IBAction func fontSizeSlider(_ sender: UISlider) {
        fontSize = CGFloat(Int(sender.value))
    }
    
    @IBAction func backgroundColor(_ sender: Any) {
        openColorPicker()
        selectColorFor = 0
    }
    
    @IBAction func fontcolor(_ sender: Any) {
        openColorPicker()
        selectColorFor = 1
    }
    
    @IBAction func background1Color(_ sender: Any) {
        openColorPicker()
        selectColorFor = 2
    }
    
    @IBAction func background2color(_ sender: Any) {
        openColorPicker()
        selectColorFor = 3
    }
    
    @IBAction func alphaSlider(_ sender: UISlider) {
        alpha = CGFloat(sender.value)
    }
    
    @IBAction func blurSlider(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            blurType = .regular
        case 1:
            blurType = .light
        case 2:
            blurType = .dark
        default:
            blurType = .regular
        }
    }
    
    @IBAction func wheelSlider(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            wheelType = .medium
        case 1:
            wheelType = .large
        default:
            wheelType = .medium
        }
    }
    
    func openColorPicker() {
        colorPicker.supportsAlpha = true
        present(colorPicker, animated: true, completion: nil)
    }
}

//MARK: - Color Picker Methods

@available(iOS 14.0, *)
extension StudioViewController: UIColorPickerViewControllerDelegate {
    
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
        selectedColor = colorPicker.selectedColor
    }
    
    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
        switch selectColorFor {
        case 0:
            bgBtn.backgroundColor = selectedColor
            bgColor = selectedColor
        case 1:
            fontBtn.backgroundColor = selectedColor
            fontColor = selectedColor
        case 2:
            bg1Btn.backgroundColor = selectedColor
            bg1Color = selectedColor
        case 3:
            bg2Btn.backgroundColor = selectedColor
            bg2Color = selectedColor
        default:
            break
        }
    }
}
