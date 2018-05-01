//
//  KeyButton.swift
//  CardGame
//
//  Created by LuLouie on 2018/4/29.
//  Copyright © 2018年 lisply. All rights reserved.
//

import UIKit

@IBDesignable
class KeyButton: UIButton {
    static let kBannerStartY:CGFloat = -50.0
    static let kBannerEndY:CGFloat = -100.0
    
    
    func animate(withText text:String) {
        clipsToBounds = false
        let bannerLabel = UILabel()
        bannerLabel.text = text
        bannerLabel.font = UIFont.boldSystemFont(ofSize: 20)
        bannerLabel.textColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
        bannerLabel.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 0.5)
//        bannerLabel.shadowColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
//        bannerLabel.shadowOffset = CGSize(width: 2, height: 2)
        bannerLabel.textAlignment = .center
        
        addSubview(bannerLabel)

        bannerLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 30)
        bannerLabel.center = CGPoint(x: frame.width/2, y: frame.height/2 + KeyButton.kBannerStartY)
        bannerLabel.isHidden = false

        
        UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseInOut, animations: {
            bannerLabel.center = CGPoint(x: self.frame.width/2, y: self.frame.height/2 + KeyButton.kBannerEndY)
            bannerLabel.alpha = 0
        }) { (sucess) in
            bannerLabel.removeFromSuperview()
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

