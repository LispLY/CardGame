//
//  Summon.swift
//  CardGame
//
//  Created by LuLouie on 2018/4/30.
//  Copyright © 2018年 lisply. All rights reserved.
//

import Foundation

class Summon {
    let mutiplier = 1.1
    var stage:Int // 0-3
    var count = 0
    
    var cost:Double {
        var value = 10.0
        for _ in 0...stage {
            value *= 100.0
        }
        for _ in 0...count {
            value *= mutiplier
        }
        return value
    }
    
    init(withStage stage:Int, count:Int = 0) {
        self.stage = stage
        self.count = count
    }
    
    func canSummon(WithPoint point:Int) -> Bool {
        return point > Int(cost)
    }
    
    //        func summonACard() -> <#return type#> {
    //            <#function body#>
    //        }
}
