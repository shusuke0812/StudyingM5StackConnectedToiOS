//
//  UIColor+Extension.swift
//  M5StackConnectedToiOS
//
//  Created by Shusuke Ota on 2020/10/28.
//

import UIKit

extension UIColor {
    /// RGB値を指定してUIColorを設定する
    internal static func setRGB(r: Int, g: Int, b: Int, alpha: CGFloat) -> UIColor {
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha)
    }
}
