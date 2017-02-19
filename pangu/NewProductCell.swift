//
//  NewProductCell.swift
//  pangu
//
//  Created by jim on 17/2/11.
//  Copyright © 2017年 jim. All rights reserved.
//

import UIKit

class NewProductCell: UICollectionViewCell {
    
    var image = UIImageView()
    var label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    private func setupUI(){
        self.backgroundColor = UIColor.blackColor()
        image.frame = CGRectMake(8, 10, 100, 80)
        addSubview(image)
        
        label.frame = CGRectMake(8, 100, 100, 20)
        label.numberOfLines = 0
        label.lineBreakMode = .ByCharWrapping
        label.font = UIFont.systemFontOfSize(13)
        label.textColor = UIColor.whiteColor()
        addSubview(label)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
