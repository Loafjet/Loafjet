//
//  ViewController.swift
//  Loafjet
//
//  Created by gokulnair2001 on 01/22/2021.
//  Copyright (c) 2021 gokulnair2001. All rights reserved.
//

import UIKit
import Loafjet

class LoafTypes{
    var loafName: String?
    var loafType: [String]?
    var loafAnimation: [String]?
    
    init(loafName: String?, loafType: [String], loafAnimation: [String]) {
        self.loafName = loafName
        self.loafType = loafType
        self.loafAnimation = loafAnimation
    }
}

class MainViewController: UIViewController {

    var loafTypes = [LoafTypes]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Array Data
        
        loafTypes.append(LoafTypes.init(loafName: "Plain Loaf", loafType: ["Top","Centre", "Centre","Bottom"], loafAnimation: ["Top -> Bottom", "Left -> Right", "Right -> Left","Bottom -> Top"]))
        loafTypes.append(LoafTypes.init(loafName: "Gradient Loaf", loafType: ["Top","Centre", "Centre","Bottom"], loafAnimation: ["Top -> Bottom", "Left -> Right", "Right -> Left","Bottom -> Top"]))
        loafTypes.append(LoafTypes.init(loafName: "Popup Card", loafType: ["Centre"], loafAnimation: ["Only one type of animation"]))
        loafTypes.append(LoafTypes.init(loafName: "Loaf Wheel", loafType: ["Centre"], loafAnimation: ["Only one type of animation"]))
        loafTypes.append(LoafTypes.init(loafName: "Customized Loafs", loafType: ["Xcode","Airpods","Error","Sucessful","Warning","Information","Do Not Disturb"], loafAnimation: ["","","","","","",""]))
       
    }
  
}


extension MainViewController: UITableViewDelegate, UITableViewDataSource{
    
    //MARK:- Tableview Methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return loafTypes.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return loafTypes[section].loafType?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = loafTypes[indexPath.section].loafType?[indexPath.row]
        cell.detailTextLabel?.text = loafTypes[indexPath.section].loafAnimation?[indexPath.row]
        cell.isSelected = false
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return loafTypes[section].loafName
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print("\(indexPath.section)\(indexPath.row)")
        let CellNo = Int("\(indexPath.section)\(indexPath.row)")
        performTask(cellNo: CellNo!)
    }
    
 //MARK:- Test run method
    
    func performTask(cellNo: Int){
        switch cellNo {
        case 0:
            Loaf.PlainLoaf(Message: "Message goes here", Position: .bottom, AnimationDirection: .Bottom, LoafjetView: view)
           // Loaf.PlainLoaf(Message: "Welcome", Position: .top, LoafWidth: 200, LoafHeight: 40, CornerRadius: 20, FontStyle: "Avenir-Medium", FontSize: 17, BGColor: .gray, FontColor: .black, LoafImage: nil, AnimationDirection: .Top, Duration: 2, LoafjetView: view)
            break
        case 1:
            Loaf.PlainLoaf(Message: "LOAFJET", Position: .center, LoafWidth: 200, LoafHeight: 40, CornerRadius: 20, FontStyle: "Avenir", FontSize: 17, BGColor: .systemOrange, FontColor: .black, LoafImage: nil, AnimationDirection: .Left, Duration: 2, LoafjetView: view)
            break
        case 2:
            Loaf.PlainLoaf(Message: "Plain Loafjet", Position: .center, LoafWidth: 220, LoafHeight: 40, CornerRadius: 20, FontStyle: "Avenir-Medium", FontSize: 17, BGColor: .brown, FontColor: .white, LoafImage: "Logo", AnimationDirection: .Right, Duration: 2, LoafjetView: view)
            break
        case 3:
            Loaf.PlainLoaf(Message: "🚀 Loafjet   ", Position: .bottom, LoafWidth: 200, LoafHeight: 40, CornerRadius: 20, FontStyle: "Avenir-Heavy", FontSize: 17, BGColor: .black, FontColor: .white, LoafImage: nil, AnimationDirection: .Bottom, Duration: 2, LoafjetView: view)
            break
        case 10:
            Loaf.GradientLoaf(Message: "Grad LoafJet", Position: .top, LoafWidth: 250, LoafHeight: 45, CornerRadius: 5, FontStyle: "Avenir-Heavy", FontSize: 17, BGColor1: .systemPink, BGColor2: .systemOrange, FontColor: .black, LoafImage: "Logo", AnimationDirection: .Top, Duration: 2, LoafjetView: view)
            break
        case 11:
            Loaf.GradientLoaf(Message: "Xcode Loading", Position: .center, LoafWidth: 250, LoafHeight: 40, CornerRadius: 10, FontStyle: "Avenir-Medium", FontSize: 16, BGColor1: .systemRed, BGColor2: .systemBlue, FontColor: .black, LoafImage: "Xcode", AnimationDirection: .Left, Duration: 2, LoafjetView: view)
            break
        case 12:
            Loaf.GradientLoaf(Message: "Airpods Detected", Position: .center, LoafWidth: 250, LoafHeight: 40, CornerRadius: 20, FontStyle: "Avenir-Medium", FontSize: 16, BGColor1: .brown, BGColor2: .cyan, FontColor: .black, LoafImage: "Airpods", AnimationDirection: .Right, Duration: 2, LoafjetView: view)
            break
        case 13:
            Loaf.GradientLoaf(Message: "HomePod Mini Detected", Position: .bottom, LoafWidth: 300, LoafHeight: 50, CornerRadius: 20, FontStyle: "Avenir-Heavy", FontSize: 17, BGColor1: .systemPink, BGColor2: .black, FontColor: .white, LoafImage: "HomePodMini", AnimationDirection: .Bottom, Duration: 2, LoafjetView: view)
            break
        case 20:
            if #available(iOS 10.0, *) {
                Loaf.PopupCard(Message: "Loafjet is a custom library used to add Toast, Popup Card and Loading indicator in your Swift project.", Position: .bottom, LoafWidth: 250, LoafHeight: 300, CornerRadius: 20, FontStyle: "Avenir-Medium", FontSize: 17, BGColor1: .black, BGColor2: .systemRed, FontColor: .white, LoafImage: "Logo", Duration: 5, BlurEffect: .dark, LoafjetView: view)
            } else {
               print("Pod LoafJet: Your device dont support this blur effect type (require iOS 10.0+)")
            }
            break
        case 30:
            if #available(iOS 10.0, *) {
                Loaf.LoafWheel(Message: "LoafJet loading!", LoafWidth: 250, LoafHeight: 90, CornerRadius: 20, BGColor1: .systemPink, BGColor2: .systemOrange, FontStyle: "Avenir-Heavy", FontSize: 18, FontColor: .white, Duration: 5, WheelStyle: .whiteLarge, BlurEffect: .dark, LoafWheelView: view)
            } else {
                print("Pod LoafJet: Your device dont support this blur effect type (require iOS 10.0+)")
            }
            break
        case 40:
            Loaf.PlainLoaf(Message: "Xcode", Position: .top, LoafWidth: 200, LoafHeight: 40, CornerRadius: 10, FontStyle: "Avenir-Medium", FontSize: 17, BGColor: .systemBlue, FontColor: .black, LoafImage: "Xcode", AnimationDirection: .Top, Duration: 2, LoafjetView: view)
            break
        case 41:
            Loaf.PlainLoaf(Message: "AirPods Connected", Position: .top, LoafWidth: 250, LoafHeight: 50, CornerRadius: 20, FontStyle: "Avenir-Medium", FontSize: 16, BGColor: .systemGray, FontColor: .white, LoafImage: "Airpods", AnimationDirection: .Top, Duration: 2, LoafjetView: view)
            break
        case 42:
            Loaf.PlainLoaf(Message: "Error Found! LoafJet", Position: .bottom, LoafWidth: 250, LoafHeight: 40, CornerRadius: 10, FontStyle: "Avenir-Heavy", FontSize: 16, BGColor: .systemRed, FontColor: .white, LoafImage: "error", AnimationDirection: .Bottom, Duration: 2, LoafjetView: view)
            break
        case 43:
            Loaf.PlainLoaf(Message: "Completion LoafJet", Position: .bottom, LoafWidth: 250, LoafHeight: 40, CornerRadius: 10, FontStyle: "Avenir-Medium", FontSize: 16, BGColor: .systemGreen, FontColor: .white, LoafImage: "success", AnimationDirection: .Bottom, Duration: 2, LoafjetView: view)
            break
        case 44:
            Loaf.PlainLoaf(Message: "Warning LoafJet", Position: .bottom, LoafWidth: 250, LoafHeight: 40, CornerRadius: 10, FontStyle: "Avenir-Heavy", FontSize: 17, BGColor: .systemYellow, FontColor: .white, LoafImage: "warning", AnimationDirection: .Bottom, Duration: 2, LoafjetView: view)
            break
        case 45:
                Loaf.PlainLoaf(Message: "Information LoafJet", Position: .bottom, LoafWidth: 250, LoafHeight: 40, CornerRadius: 10, FontStyle: "Avenir-Medium", FontSize: 17, BGColor: .systemOrange, FontColor: .white, LoafImage: "info", AnimationDirection: .Bottom, Duration: 2, LoafjetView: view)
            break
        case 46:
            if #available(iOS 13.0, *) {
                Loaf.PlainLoaf(Message: "Do Not Disturb LoafJet", Position: .bottom, LoafWidth: 280, LoafHeight: 40, CornerRadius: 10, FontStyle: "Avenir-Medium", FontSize: 16, BGColor: .systemIndigo, FontColor: .white, LoafImage: "DND", AnimationDirection: .Bottom, Duration: 2, LoafjetView: view)
            } else {
                print("Pod LoafJet: Your device dont support this color type (require iOS 13.0+)")
            }
            break
        default:
            print("Error")
        }
    }
    
}
