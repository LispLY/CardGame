//
//  Card.swift
//  CardGame
//
//  Created by LuLouie on 2018/4/28.
//  Copyright © 2018年 lisply. All rights reserved.
//

import Foundation

/* 卡牌
 * 每个卡牌为单例，使用卡牌数量控制
 * 带有等级的牌（有等级，有个数）
 * 等级：灰0、白1、绿2、蓝3、紫4、橙5  //灰色（粗糙）→白色（普通）→绿色（优秀）→蓝色（精良）→紫色（史诗）→橙色（传说）
 * 权重：概率为 权重/总体权重
 * 特性：加成功能等。
 */


struct Card {
    static let kStandardWeight = 1000000 // 权重基准
    static let kWeightStride = 10 // 权重级差

    var identifier:Int // 种类
    var level:Int // 等级
    var name:String {
        return "\(identifier)"
    }
    
    var count = 0 // 已获取的数量
    
    var weight:Int  {
        var weight = Card.kStandardWeight
        for _ in 0..<level {
            weight /= Card.kWeightStride;
        }
        return weight
    }
    
    enum Level {
    }

    
}



