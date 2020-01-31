//
//  PRSColor.swift
//  weCare
//
//  Created by Orhan Özdemir on 29.01.2020.
//  Copyright © 2020 PRS Kozmetik. All rights reserved.
//

import UIKit

extension UIColor {
    
    @nonobjc class var bluishGreen: UIColor {
        return UIColor(red: 16.0 / 255.0, green: 171.0 / 255.0, blue: 132.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var macaroniAndCheese: UIColor {
        return UIColor(red: 244.0 / 255.0, green: 169.0 / 255.0, blue: 50.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var black: UIColor {
        return UIColor(red: 33.0 / 255.0, green: 29.0 / 255.0, blue: 24.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var silver: UIColor {
        return UIColor(red: 197.0 / 255.0, green: 206.0 / 255.0, blue: 204.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var lightGrey: UIColor {
        return UIColor(red: 234.0 / 255.0, green: 239.0 / 255.0, blue: 237.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var steelGrey: UIColor {
        return UIColor(red: 120.0 / 255.0, green: 125.0 / 255.0, blue: 124.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var pinkishRed: UIColor {
        return UIColor(red: 240.0 / 255.0, green: 24.0 / 255.0, blue: 62.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var darkSeaGreen: UIColor {
        return UIColor(red: 14.0 / 255.0, green: 143.0 / 255.0, blue: 111.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var mobileConnectPurple: UIColor {
        return UIColor(red: 91.0 / 255.0, green: 83.0 / 255.0, blue: 120.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var valletPurple: UIColor {
        return UIColor().hex(string: "852065")
    }
    
    public func hex(string:String) -> UIColor {
        var cString:String = string.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
