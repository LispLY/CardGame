//
//  CardView.swift
//  CardGame
//
//  Created by LuLouie on 2018/4/29.
//  Copyright © 2018年 lisply. All rights reserved.
//



import UIKit

let kScreenWidth = UIScreen.main.bounds.size.width
let kScreenHeight = UIScreen.main.bounds.size.height



@IBDesignable
class CardView: UIView {
    
    func showInAnimation() {
//        if let superview = self.superview {
//            for cardView in superview.subviews where cardView is CardView {
//                if cardView != self {
//                    cardView.removeFromSuperview()
//                }
//            }
//        }
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 2, options: UIViewAnimationOptions.beginFromCurrentState,  animations: {
            self.center = CGPoint(x: self.superview!.center.x, y: self.superview!.center.y - 60.0)
        }) { (_) in
        }
        
    }
    
    func leaveAnimation() {
        // 转化为图片
        let imageView = UIImageView(image: self.toImage())
        self.contentView.removeFromSuperview()
        self.addSubview(imageView)
        imageView.frame = self.bounds
        imageView.contentMode = .scaleToFill

        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
            self.frame = CGRect(x: kScreenWidth - 45 + 12, y: kScreenHeight - 60 + 12, width: 30, height: 42)
            imageView.frame = self.bounds
        }) { (_) in
        }
        UIView.animate(withDuration: 0.4, delay: 0.2, options: .curveEaseInOut, animations: {
            self.alpha = 0
        }, completion: { (_) in
            self.removeFromSuperview()
        })

    }

    
    @IBOutlet var contentView: UIView!
    
    
    override func awakeFromNib() {
        Bundle.main.loadNibNamed("CardView", owner: self, options: nil)
        addSubview(contentView)
        backgroundColor = UIColor.clear
        frame = CGRect(x: 0, y: 0, width: 136, height: 176)
        center = CGPoint(x: superview!.center.x, y: -100.0)

    }
    
}
