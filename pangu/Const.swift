//
//  Const.swift
//  pangu
//
//  Created by jim on 17/1/22.
//  Copyright © 2017年 jim. All rights reserved.
//

import Foundation
import UIKit

//屏幕宽和高
let SCREEN_WIDTH = UIScreen.mainScreen().bounds.width
let SCREEN_HEIGHT = UIScreen.mainScreen().bounds.height
//banner的高和宽
let banner_W:CGFloat = 150
let banner_H:CGFloat = 75
//间距
let KMargin:CGFloat = 10.0


//RGBA的颜色设置
func LFColor(r:CGFloat,g:CGFloat,b:CGFloat,a:CGFloat)->UIColor{
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}

//背景灰色
func LFGlobalColor()->UIColor{
   return LFColor(240, g: 240, b: 240, a: 1)
}
//红色
func LFGlobalRedColor()->UIColor{
   return LFColor(245, g: 80, b: 83, a: 1)
}