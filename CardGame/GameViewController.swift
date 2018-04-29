//
//  GameViewController.swift
//  CardGame
//
//  Created by LuLouie on 2018/4/29.
//  Copyright © 2018年 lisply. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    static let kBannerStartY:CGFloat = -20.0
    static let kBannerEndY:CGFloat = -80.0
    
    lazy var game = Game()

    
    @IBOutlet weak var lineCountLabel: UILabel!
    @IBAction func semicolonButtonTapped(_ sender: KeyButton) {
        sender.animate(withText: "lines += \(game.clickMutiplier);")
        game.click()
        updateUI()
    }
    
    func updateUI() {
        lineCountLabel.text = "行数：\(game.point)";
        
//        let bannerLabel = UILabel()
//        bannerLabel.text = "+\(game.clickMutiplier)"
//        bannerLabel.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
//
//        bannerLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        bannerLabel.center = CGPoint(x: view.center.x, y: view.center.y + KeyButton.kBannerStartY)
//        bannerLabel.isHidden = false
//        view.addSubview(bannerLabel)
//
//
//        UIView.animate(withDuration: 2.0, delay: 0, options: .curveEaseInOut, animations: {
//            bannerLabel.center = CGPoint(x: self.view.center.x, y: self.view.center.y + KeyButton.kBannerEndY)
//        }) { (sucess) in
//            bannerLabel.removeFromSuperview()
//        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
