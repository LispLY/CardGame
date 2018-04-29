//
//  Game.swift
//  CardGame
//
//  Created by LuLouie on 2018/4/28.
//  Copyright © 2018年 lisply. All rights reserved.
//

import Foundation

/* game:
 * 点击增加点数，时间增加点数
 
 * 主动操作：点击，购买，抽卡
 * 被动操作：（随时间改变）点数...权限等
 
 * 数据：点数，牌组，激活牌组
 * 元数据：激活牌组上限...
 
 * 牌组：带有等级的牌（有等级，有个数）
 */


/* 第一轮功能：跑起来
 * 界面：主界面 分号按钮、行数标签
 */

/* 第二轮功能：抽卡
 * 界面：抽卡界面 卡牌 （卡牌收集界面）
 */



class Game {
    var point = 0   // 点数
    var clickMutiplier:Int {
        return 1
    }
    
    func click() {
        point += clickMutiplier
    }
    
    
    
    
}
