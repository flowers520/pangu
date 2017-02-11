//
//  BannerViewCell.swift
//  pangu
//
//  Created by jim on 17/2/10.
//  Copyright © 2017年 jim. All rights reserved.
//

import UIKit

class BannerViewCell: UICollectionViewCell {
    var banner = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        banner.frame = CGRectMake(0, 0, SCREEN_WIDTH-10, 165)
        addSubview(banner)
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
