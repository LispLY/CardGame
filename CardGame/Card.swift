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

let cardTypes = ["C":"",
                 "C++":"",
                 "Java":"",
                 "JavaScript":"",
                 "Obj-C":"",
                 "Swift":"",
                 "Android":"",
                 "C#":"",
                 "汇编":""]

struct Card {
    static let kStandardWeight = 1000000 // 权重基准
    static let kWeightStride = 10 // 权重级差
    static let kMaxLevel = 5 // 等级
    

    /// returns a complete suit of cards include all levels
    ///
    /// - Returns: cards
    static func newCardSuit() -> [Card] {
        var cards = [Card]()
        for level in 0...kMaxLevel {
            cards.append(contentsOf: Card.cards(withLevel: level))
        }
        return cards
    }
    
    private static func cards(withLevel level:Int) -> [Card] {
        var cards = [Card]()
        for (name, description) in cardTypes {
            cards.append(Card(name:name , description: description, level: level))
        }
        return cards
    }

    
    /// card properties
    var identifier:String // 种类:等级
    var name:String
    var description:String
    var level:Int // 等级 0-5 -> levels
    var count = 0 // 已获取的数量
    
    var weight:Int  { // 不是精确权重，包含上一级的权重
        var weight = Card.kStandardWeight
        for _ in 0..<level {
            weight /= Card.kWeightStride;
        }
        return weight
    }
    
    init(name:String, description:String, level:Int) {
        self.name = name
        self.description = description.isEmpty ? "一个看起来平平无奇的程序员" : description
        self.level = level
        self.count = 0
        self.identifier = "\(name):level\(level)"
    }
    
    
    
}



