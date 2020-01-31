//
//  PRSLabel.swift
//  weCare
//
//  Created by Orhan Özdemir on 29.01.2020.
//  Copyright © 2020 PRS Kozmetik. All rights reserved.
//

import UIKit

class PRSLabel: UILabel {

    @IBInspectable var cornerRadius: Double {
         get {
           return Double(self.layer.cornerRadius)
         }set {
           self.layer.cornerRadius = CGFloat(newValue)
         }
    }
    
    @IBInspectable var borderWidth: Double {
         get {
           return Double(self.layer.borderWidth)
         }set {
           self.layer.borderWidth = CGFloat(newValue)
         }
    }
    
    @IBInspectable var borderColor: UIColor? {
         get {
            return UIColor(cgColor: self.layer.borderColor!)
         }
         set {
            self.layer.borderColor = newValue?.cgColor
         }
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
