//
//  TabBarViewController.swift
//  pangu
//
//  Created by jim on 17/1/22.
//  Copyright © 2017年 jim. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tabBar.tintColor = LFColor(245, g: 80, b: 83, a: 1.0)
        //添加子控制器
        addChildViewControllers()
    }

    /**
     添加子控制器
     */
    private func addChildViewControllers(){
        addChildViewController("HomeViewController", title: "首页", imageName: "TabBar_home_23x23_")
        addChildViewController("ProductViewController", title: "单品", imageName: "TabBar_gift_23x23_")
        addChildViewController("ClassifyViewController", title: "分类", imageName: "TabBar_category_23x23_")
        addChildViewController("MeViewController", title: "我", imageName: "TabBar_me_boy_23x23_")

    }
    
    private func addChildViewController(childControllerName:String,title:String,imageName:String) {
        let ns = NSBundle.mainBundle().infoDictionary!["CFBundleExecutable"] as! String
        let cls: AnyClass? = NSClassFromString(ns + "." + childControllerName)
        let vcClass = cls as! UIViewController.Type
        let vc = vcClass.init()
        
        vc.tabBarItem.image = UIImage(named: imageName)
        vc.tabBarItem.selectedImage = UIImage(named: imageName+"selected")
        vc.title = title
        
        let nav = NavigationViewController()
        nav.addChildViewController(vc)
        addChildViewController(nav)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
