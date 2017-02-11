//
//  BannerCollection.swift
//  pangu
//
//  Created by jim on 17/1/23.
//  Copyright © 2017年 jim. All rights reserved.
//

import UIKit

class BannerCollection: NSObject {
    
    var banner_Image_url: String?
    
    init(dict: [String: AnyObject]){
        super.init()
        
        banner_Image_url = dict["banner_image_url"] as? String
    }

}
