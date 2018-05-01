//
//  extensions.swift
//  CardGame
//
//  Created by LuLouie on 2018/4/30.
//  Copyright © 2018年 lisply. All rights reserved.
//

import UIKit

extension Int {
    func arc4random() -> Int {
        return self > 0 ? Int(arc4random_uniform(UInt32(self))) : -Int(arc4random_uniform(UInt32(-self)))
    }
}

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.borderWidth = newValue
        }
    }
    @IBInspectable var borderColor: UIColor? {
        get {
            return (layer.borderColor != nil) ? UIColor(cgColor: layer.borderColor!) : UIColor.clear
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}

extension UIView {
    func toImage() -> UIImage {
        UIGraphicsBeginImageContext(bounds.size);
        layer.render(in: UIGraphicsGetCurrentContext()!)
        defer {
            UIGraphicsEndImageContext()
        }
        return UIGraphicsGetImageFromCurrentImageContext()!
    }
}


