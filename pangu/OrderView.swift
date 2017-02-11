//
//  OrderView.swift
//  pangu
//
//  Created by jim on 17/2/10.
//  Copyright © 2017年 jim. All rights reserved.
//

import UIKit

class OrderView: UIView {

    var LabelArray = [String]()
    var imageArray = [String]()
    var numArray = [Int]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    private func setupUI(){
        
        for index in 0..<6{
            let button = ButtonView()
            
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
