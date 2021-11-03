//
//  Enums.swift
//  Loafjet
//
//  Created by Gokul Nair on 03/11/21.
//

import Foundation

//MARK: - Enumeration Keys

extension Loaf {
    
    //MARK: - Position Method
    public enum LoafPosition {
        case top
        case centre
        case bottom
        func centerPoint(view: UIView, width:CGFloat, height:CGFloat) -> CGRect{
            switch self {
            case .top:
                return CGRect(x: view.frame.origin.x, y: view.frame.origin.y+45, width: width, height: height)
            case .centre:
                return CGRect(x: view.center.x, y: view.center.y, width: width, height: height)
                
            case .bottom:
                return CGRect(x: view.frame.origin.x-300, y: view.bounds.height-60, width: width, height: height)
            }
        }
    }
    
    //MARK: - Toast Animation Method
    public enum LoafAnimation {
        case Left
        case Right
        case Bottom
        case Top
    }
}
