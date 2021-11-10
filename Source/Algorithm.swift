//
//  Algorithm.swift
//  Loafjet
//
//  Created by Gokul Nair on 09/11/21.
//

import Foundation

extension Loaf {
    static func getImageDynamics(height: CGFloat, imageName: String) -> (imageLength:CGFloat, labelSpace:CGFloat){
        var dynamicImageSize:CGFloat = 0
        var labelXAxis:CGFloat = 0
        
        if height > 60 && height <= 80{
            dynamicImageSize = height-20
        }
        else if height > 80 && height <= 90 {
            dynamicImageSize = height-30
        }
        else {
            dynamicImageSize =  25
        }
        
        if imageName.trimmingCharacters(in: .whitespaces) == "" {
            labelXAxis = 0
        }else {
            labelXAxis = dynamicImageSize + 25
        }
        
        return (dynamicImageSize, labelXAxis)
    }
}
