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
    var loafImage: [String]?
    
    init(loafName: String?, loafType: [String], loafAnimation: [String], loafImage: [String]) {
        self.loafName = loafName
        self.loafType = loafType
        self.loafAnimation = loafAnimation
        self.loafImage = loafImage
    }
}
class MainViewController: UIViewController {
    
    var loafTypes = [LoafTypes]()
    let customGreen:UIColor = #colorLiteral(red: 0, green: 0.9810667634, blue: 0.5736914277, alpha: 1)
    let customYellow:UIColor = #colorLiteral(red: 0.9541172385, green: 0.8875228763, blue: 0, alpha: 1)
    let customRed:UIColor = #colorLiteral(red: 0.8431372549, green: 0.1725490196, blue: 0.2549019608, alpha: 0.8483028791)
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeAppearance(mode: .light)
        // Array Data
        loafTypes.append(LoafTypes.init(loafName: "Plain Loaf", loafType: ["Top","Centre", "Centre","Bottom"], loafAnimation: ["Top -> Bottom", "Left -> Right", "Right -> Left","Bottom -> Top"], loafImage: ["top","mid","mid","bottom"]))
        loafTypes.append(LoafTypes.init(loafName: "Gradient Loaf", loafType: ["Top","Centre", "Centre","Bottom"], loafAnimation: ["Top -> Bottom", "Left -> Right", "Right -> Left","Bottom -> Top"], loafImage: ["top","mid","mid","bottom"]))
        loafTypes.append(LoafTypes.init(loafName: "Popup Card", loafType: ["Centre"], loafAnimation: ["Only one type of animation"], loafImage: ["pop"]))
        loafTypes.append(LoafTypes.init(loafName: "Dash Board", loafType: ["Loafjet proprietary Style","Successful Style","Information Style","Alert Style"], loafAnimation: ["Bottom","Bottom","Bottom","Bottom"], loafImage: ["Dash","Dash","Dash","Dash"]))
        loafTypes.append(LoafTypes.init(loafName: "Loaf Wheel", loafType: ["Centre"], loafAnimation: ["Only one type of animation"], loafImage: ["wheel"]))
        loafTypes.append(LoafTypes.init(loafName: "Customized Loafs", loafType: ["Xcode","Airpods","Error","Sucessful","Warning","Information","Do Not Disturb"], loafAnimation: ["Optional","Optional","Optional","Optional","Optional","Optional","Optional"], loafImage: ["bottom","bottom","bottom","bottom","bottom","bottom","bottom"]))

    }
    
    //MARK:- Dark / Light mode toggle
    @IBAction func segemntAction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            changeAppearance(mode: .light)
        }else if sender.selectedSegmentIndex == 1 {
            changeAppearance(mode: .dark)
        }
    }
    // Appearance Method
    func changeAppearance(mode: UIUserInterfaceStyle) {
        UIApplication.shared.windows.forEach { window in
            if #available(iOS 13.0, *) {
                view.overrideUserInterfaceStyle = mode
            }
        }
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! loafjetTableViewCell
        cell.mainLbl.text = loafTypes[indexPath.section].loafType?[indexPath.row]
        cell.subLbl.text = loafTypes[indexPath.section].loafAnimation?[indexPath.row]
        cell.exImage.image = UIImage(named: (loafTypes[indexPath.section].loafImage?[indexPath.row])!)
        cell.isSelected = false
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
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
            Loaf.PlainLoaf(message: "Welcome", position: .top, loafWidth: 200, loafHeight: 40, cornerRadius: 20, fontStyle: "Avenir-Medium", fontSize: 17, bgColor: .gray, fontColor: .black, alphaValue: 1.0, loafImage: nil, animationDirection: .Top, duration: 2, loafjetView: view)
            break
        case 1:
            Loaf.PlainLoaf(message: "LOAFJET", position: .centre, loafWidth: 200, loafHeight: 40, cornerRadius: 20, fontStyle: "Avenir", fontSize: 17, bgColor: .systemOrange, fontColor: .black, alphaValue: 1.0, loafImage: nil, animationDirection: .Left, duration: 2, loafjetView: view)
            break
        case 2:
            Loaf.PlainLoaf(message: "Plain Loafjet", position: .centre, loafWidth: 220, loafHeight: 40, cornerRadius: 20, fontStyle: "Avenir-Medium", fontSize: 17, bgColor: .brown, fontColor: .white, alphaValue: 1.0, loafImage: "Logo", animationDirection: .Right, duration: 2, loafjetView: view)
            break
        case 3:
            Loaf.PlainLoaf(message: "🚀 Loafjet   ", position: .bottom, loafWidth: 200, loafHeight: 40, cornerRadius: 20, fontStyle: "Avenir-Heavy", fontSize: 17, bgColor: .black, fontColor: .white, alphaValue: 1.0, loafImage: nil, animationDirection: .Bottom, duration: 2, loafjetView: view)
            break
        case 10:
            Loaf.GradientLoaf(message: "Grad LoafJet", position: .top, loafWidth: 250, loafHeight: 45, cornerRadius: 5, fontStyle: "Avenir-Heavy", fontSize: 17, bgColor1: .systemPink, bgColor2: .systemOrange, fontColor: .black, loafImage: "Logo", animationDirection: .Top, duration: 2, loafjetView: view)
            break
        case 11:
            Loaf.GradientLoaf(message: "Xcode Loading", position: .centre, loafWidth: 250, loafHeight: 40, cornerRadius: 10, fontStyle: "Avenir-Medium", fontSize: 16, bgColor1: .systemRed, bgColor2: .systemBlue, fontColor: .black, loafImage: "Xcode", animationDirection: .Left, duration: 2, loafjetView: view)
            break
        case 12:
            Loaf.GradientLoaf(message: "Airpods Detected", position: .centre, loafWidth: 250, loafHeight: 40, cornerRadius: 20, fontStyle: "Avenir-Medium", fontSize: 16, bgColor1: .brown, bgColor2: .cyan, fontColor: .black, loafImage: "Airpods", animationDirection: .Right, duration: 2, loafjetView: view)
            break
        case 13:
            Loaf.GradientLoaf(message: "HomePod Mini Detected", position: .bottom, loafWidth: 300, loafHeight: 50, cornerRadius: 20, fontStyle: "Avenir-Heavy", fontSize: 17, bgColor1: .systemPink, bgColor2: .black, fontColor: .white, loafImage: "HomePodMini", animationDirection: .Bottom, duration: 2, loafjetView: view)
            break
        case 20:
            if #available(iOS 12.0, *) {
                Loaf.PopupCard(message: "Loafjet is a custom library used to add Toast, Popup Card and Loading indicator in your Swift project.", loafWidth: 250, loafHeight: 300, cornerRadius: 20, fontStyle: "Avenir-Medium", fontSize: 17, bgColor1: .black, bgColor2: .systemRed, fontColor: .white, loafImage: "Logo", duration: 3, blurEffect: .dark, loafjetView: view)
            } else {
                print("Pod LoafJet: Your device don't support this blur effect type (require iOS 10.0+)")
            }
            break
        case 30:
            if #available(iOS 14.0, *) {
                Loaf.dashBoard(dashSpacing: 30, dashRadius: 20, dashColor: .black, dashImage: "Logo", dashImageRadius: 0, dashTitle: "LOAFJET 🚀", dashTitleColor: .red, dashContent: "Loafjet is a light weight custom library used to add Toast, Popup Card and Loading indicator in your Swift project.", dashContentColor: .white, dashButtonTitle: "Customise Now", dashButtonTitleColor: .black, dashButtonColor: .white, dashButtonRadius: 20, dashButtonBorderColor: .black, dashButtonBorderWidth: 2, dashDuration: 0.75, mainView: view){
                    
                    Loaf.dismissDashBoard(inView: self.view)
            
                }
            } else {
                print("Pod LoafJet: Your device don't support this Loafjet type (require iOS 14.0+)")
            }
            break
        case 31:
            if #available(iOS 14.0, *) {
                Loaf.dashBoard(dashSpacing: 30, dashRadius: 0, dashColor: customGreen, dashImage: "tick", dashImageRadius: 0, dashTitle: "Verified!", dashTitleColor: .black, dashContent: "Your Verification was successful\nNow enjoy Loafjet+", dashContentColor: .black, dashButtonTitle: "Log In", dashButtonTitleColor: .black, dashButtonColor: .white, dashButtonRadius: 0, dashButtonBorderColor: .green, dashButtonBorderWidth: 1, dashDuration: 1.5, mainView: view) {
                    
                    Loaf.dismissDashBoard(inView: self.view)
            
                }
            } else {
                print("Pod LoafJet: Your device don't support this Loafjet type (require iOS 14.0+)")
            }
            
        case 32:
            if #available(iOS 14.0, *) {
                Loaf.dashBoard(dashSpacing: 40, dashRadius: 20, dashColor: .white, dashImage: "qr", dashImageRadius: 0, dashTitle: "QR Code", dashTitleColor: .black, dashContent: "Scan the QR Code, create an account and enjoy using Loafjet+.", dashContentColor: .black, dashButtonTitle: "Claim Now!", dashButtonTitleColor: .black, dashButtonColor: customYellow, dashButtonRadius: 20, dashButtonBorderColor: .white, dashButtonBorderWidth: 2, dashDuration: 1.5, mainView: view) {
                    
                    Loaf.dismissDashBoard(inView: self.view)
                
                }
            } else {
                print("Pod LoafJet: Your device don't support this Loafjet type (require iOS 14.0+)")
            }
            
        case 33:
            if #available(iOS 14.0, *) {
                Loaf.dashBoard(dashSpacing: 20, dashRadius: 20, dashColor: .label, dashImage: "new", dashImageRadius: 0, dashTitle: "Apple Music", dashTitleColor: customRed, dashContent: "Your Apple Music subscription will expire in 3 days.", dashContentColor: .systemBackground, dashButtonTitle: "Pay Now", dashButtonTitleColor: .label, dashButtonColor: .systemBackground, dashButtonRadius: 20, dashButtonBorderColor: .clear, dashButtonBorderWidth: 0, dashDuration: 1.0, mainView: view){
                    
                    Loaf.dismissDashBoard(inView: self.view)
            
                }
            }else {
                print("Pod LoafJet: Your device don't support this Loafjet type (require iOS 14.0+)")
            }
            
        case 40:
            if #available(iOS 12.0, *) {
                Loaf.LoafWheel(message: "LoafJet loading!", loafWidth: 250, loafHeight: 110, cornerRadius: 20, bgColor1: .systemPink, bgColor2: .systemOrange, fontStyle: "Avenir-Heavy", fontSize: 18, fontColor: .white, duration: 5, wheelStyle: .whiteLarge, blurEffect: .dark, loafWheelView: view)
            } else {
                print("Pod LoafJet: Your device dont support this blur effect type (require iOS 10.0+)")
            }
            break
        case 50:
            Loaf.PlainLoaf(message: "Xcode", position: .top, loafWidth: 200, loafHeight: 40, cornerRadius: 10, fontStyle: "Avenir-Medium", fontSize: 17, bgColor: .systemBlue, fontColor: .black, alphaValue: 1.0, loafImage: "Xcode", animationDirection: .Left, duration: 2, loafjetView: view)
            break
        case 51:
            Loaf.PlainLoaf(message: "AirPods Connected", position: .top, loafWidth: 245, loafHeight: 45, cornerRadius: 20, fontStyle: "Avenir-Medium", fontSize: 16, bgColor: .black, fontColor: .white, alphaValue: 1.0, loafImage: "Airpods", animationDirection: .Top, duration: 2, loafjetView: view)
            break
        case 52:
            Loaf.PlainLoaf(message: "Error Found! LoafJet", position: .bottom, loafWidth: 250, loafHeight: 40, cornerRadius: 10, fontStyle: "Avenir-Heavy", fontSize: 16, bgColor: .systemRed, fontColor: .white, alphaValue: 1.0, loafImage: "error", animationDirection: .Bottom, duration: 2, loafjetView: view)
            break
        case 53:
            Loaf.PlainLoaf(message: "Completion LoafJet", position: .bottom, loafWidth: 250, loafHeight: 40, cornerRadius: 10, fontStyle: "Avenir-Medium", fontSize: 16, bgColor: .systemGreen, fontColor: .white, alphaValue: 1.0, loafImage: "success", animationDirection: .Bottom, duration: 2, loafjetView: view)
            break
        case 54:
            Loaf.PlainLoaf(message: "Warning LoafJet", position: .bottom, loafWidth: 250, loafHeight: 40, cornerRadius: 10, fontStyle: "Avenir-Heavy", fontSize: 17, bgColor: .systemYellow, fontColor: .white, alphaValue: 1.0, loafImage: "warning", animationDirection: .Bottom, duration: 2, loafjetView: view)
            break
        case 55:
            Loaf.PlainLoaf(message: "Information LoafJet", position: .bottom, loafWidth: 250, loafHeight: 40, cornerRadius: 10, fontStyle: "Avenir-Medium", fontSize: 17, bgColor: .systemOrange, fontColor: .white, alphaValue: 1.0, loafImage: "info", animationDirection: .Bottom, duration: 2, loafjetView: view)
            break
        case 56:
            if #available(iOS 13.0, *) {
                Loaf.PlainLoaf(message: "Do Not Disturb LoafJet", position: .bottom, loafWidth: 280, loafHeight: 40, cornerRadius: 10, fontStyle: "Avenir-Medium", fontSize: 16, bgColor: .systemIndigo, fontColor: .white, alphaValue: 1.0, loafImage: "DND", animationDirection: .Bottom, duration: 2, loafjetView: view)
            } else {
                print("Pod LoafJet: Your device dont support this color type (require iOS 13.0+)")
            }
            break
        default:
            print("Error")
        }
    }
}
