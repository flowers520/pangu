//
//  ButtonView.swift
//  pangu
//
//  Created by jim on 17/1/23.
//  Copyright © 2017年 jim. All rights reserved.
//

import UIKit

class ButtonView: UIButton {

    var labelNum: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        titleLabel?.textAlignment = NSTextAlignment.Center
//        labelNum?.frame = CGRectMake(self.frame.width*(9-1)/16, self.frame.height*(3-1)/16, self.frame.width/8, self.frame.height/8)
//        labelNum?.backgroundColor = UIColor.orangeColor()
//        labelNum?.textColor = UIColor.blackColor()
//        labelNum?.textAlignment = .Center
//        labelNum?.font = UIFont.systemFontOfSize(13)
//        labelNum?.layer.cornerRadius = 5
//        labelNum?.clipsToBounds = true
//        //self.addSubview(labelNum!)
        
//        titleLabel?.textAlignment = .Center
        
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        //调整照片
        imageView?.x = 10
        imageView?.y = 0
        imageView?.width = width-10-10
        imageView?.height = height*3/4
        
        //调整文字
        titleLabel?.x = 0
        titleLabel?.y = imageView!.height
        titleLabel?.width = width
        titleLabel?.height = height/4
    }
}
