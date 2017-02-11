//
//  OrderView.swift
//  pangu
//
//  Created by jim on 17/2/10.
//  Copyright © 2017年 jim. All rights reserved.
//

import UIKit
import SVProgressHUD
import SnapKit

class OrderView: UIView {

    var LabelArray = [String]()
    var imageArray = [String]()
    var numArray = [String]()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        LabelArray = ["新订单","待发货订单","待收货订单","待付款订单","异常订单","冷链异常订单","待审核账号","库存预警"]
        numArray = ["6","2","4","6","6","10","3","1"]
        setupUI()
    }
    
    private func setupUI(){
        
        
        let buttonW: CGFloat = (SCREEN_WIDTH)/4
        let buttonH: CGFloat = 80
        
        for index in 0..<LabelArray.count{
            let button = ButtonView()
            button.setTitle(LabelArray[index], forState: .Normal)
            button.backgroundColor = UIColor.blackColor()
            button.setImage(UIImage(named: "icon_log_qq_63x63_"), forState: .Normal)
            button.titleLabel?.font = UIFont.systemFontOfSize(13)
            button.tag = index
            button.addTarget(self, action: Selector("buttonClick:"), forControlEvents: .TouchUpInside)
            addSubview(button)
            
            
            button.width = buttonW
            button.height = buttonH
            button.x = buttonW * CGFloat(index % 4)
            if index > 3{
                button.y = 80
            }else{
                button.y = 0
            }
            let label = UILabel()
            label.frame = CGRectMake(60, 10, 16, 16)
            label.layer.cornerRadius = 8
            label.layer.masksToBounds = true
            label.text = numArray[index]
            label.textAlignment = .Center
            label.font = UIFont.systemFontOfSize(10)
            label.textColor = UIColor.whiteColor()
            label.backgroundColor = UIColor.orangeColor()
            button.addSubview(label)
            
            
            
//            label.snp_makeConstraints(closure: { (make) -> Void in
//                make.right.equalTo(button).offset(-20)
//                make.top.equalTo(button).offset(20)
//                make.size.equalTo(CGSizeMake(10, 10))
//            })
        }
        
    }
    func buttonClick(button: UIButton){
        SVProgressHUD.showInfoWithStatus(String(button.tag))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
