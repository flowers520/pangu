//
//  NavigationViewController.swift
//  pangu
//
//  Created by jim on 17/1/22.
//  Copyright © 2017年 jim. All rights reserved.
//

import UIKit
import SVProgressHUD

class NavigationViewController: UINavigationController {
    
    internal override class func initialize(){
        super.initialize()
        let narBar = UINavigationBar.appearance()
        narBar.barTintColor = LFGlobalRedColor()
        narBar.tintColor = UIColor.whiteColor()
        narBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.whiteColor(), NSFontAttributeName:UIFont.systemFontOfSize(20)]
    }
    
    override func pushViewController(viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0{
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "checkUserType_backward_9x15_"), style: .Plain, target: self, action: Selector("navigationBackClick"))
        }
        super.pushViewController(viewController, animated: true)
    }
    
    //返回
    func navigationBackClick(){
        if SVProgressHUD.isVisible() {
            SVProgressHUD.dismiss()
        }
        if UIApplication.sharedApplication().networkActivityIndicatorVisible{
            UIApplication.sharedApplication().networkActivityIndicatorVisible = false
        }
        popViewControllerAnimated(true)
    }

//    internal override class func initialize(){
//        super.initialize()
//        //设置导航标题
//        let narBar = UINavigationBar.appearance()
//        narBar.barTintColor = LFGlobalRedColor()
//        narBar.tintColor = UIColor.whiteColor()
//        narBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.whiteColor(), NSFontAttributeName:UIFont.systemFontOfSize(20)]
//    }
//    
//    override func pushViewController(viewController: UIViewController, animated: Bool) {
//        if viewControllers.count > 0{
//            viewController.hidesBottomBarWhenPushed = true
//            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "checkUserType_backward_9x15_"), style: .Plain, target: self, action: Selector("navigationBackClick"))
//        }
//        super.pushViewController(viewController, animated: true)
//    }
//    
//    //返回按钮
//    func navigationBackClick(){
//        if SVProgressHUD.isVisible(){
//            SVProgressHUD.dismiss()
//        }
//        if UIApplication.sharedApplication().networkActivityIndicatorVisible{
//            UIApplication.sharedApplication().networkActivityIndicatorVisible = false
//        }
//        popViewControllerAnimated(true)
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
