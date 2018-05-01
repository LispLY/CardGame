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
        clearViews()
    }
    
    @IBAction func summonButtonTapped(_ sender: UIButton) {
        clearViews()
        
        let cardView = CardView(frame: CGRect(x: 0, y: 0, width: 136, height: 176))
        view.addSubview(cardView)
        cardView.awakeFromNib()
        cardView.showInAnimation()
    }
    
    
    func updateUI() {
        lineCountLabel.text = "行数：\(game.point)";
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(clearViews)))
        // Do any additional setup after loading the view.
    }
    
    @objc func clearViews() {
        for view in view.subviews where view is CardView {
            let cardView = view as! CardView
            cardView.leaveAnimation()
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
