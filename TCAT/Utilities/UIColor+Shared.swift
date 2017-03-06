//
//  UIColor+Shared.swift
//  TCAT
//
//  Created by Annie Cheng on 3/5/17.
//  Copyright © 2017 cuappdev. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    //N2SELF: get rid of these old colors
    @nonobjc static let stopNumColor1 = UIColor(red: 243/255, green: 156/255, blue: 18/255, alpha: 1.0)
    @nonobjc static let stopNumColor2 = UIColor(red: 255/255, green: 97/255, blue: 116/255, alpha: 1.0)
    @nonobjc static let pinColor = UIColor(red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0)
    //General colors
    @nonobjc static let tcatBlue = UIColor(red: 7/255, green: 157/255, blue: 220/255, alpha: 1.0)
    //OptionsVC colors
    @nonobjc static let routeCellFontColor = UIColor(red: 34/255, green: 34/255, blue: 34/255, alpha: 1.0)
    @nonobjc static let distanceLabelColor = UIColor(red: 153/255, green: 153/255, blue: 153/255, alpha: 1.0)
    @nonobjc static let headerTitleColor = UIColor(red: 71/255, green: 71/255, blue: 71/255, alpha: 1.0)
    @nonobjc static let timeIconColor = UIColor(red: 146/255, green: 146/255, blue: 146/255, alpha: 1.0)
    @nonobjc static let timeBackColor = UIColor(red: 252/255, green: 252/255, blue: 254/255, alpha: 1.0)
    @nonobjc static let lineColor = UIColor(red: 224/255, green: 224/255, blue: 224/255, alpha: 1.0)
    
    // Get color from hex code
    public static func colorFromCode(_ code: Int, alpha: CGFloat) -> UIColor {
        let red = CGFloat(((code & 0xFF0000) >> 16)) / 255
        let green = CGFloat(((code & 0xFF00) >> 8)) / 255
        let blue = CGFloat((code & 0xFF)) / 255
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}
