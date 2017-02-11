//
//  HomeViewController.swift
//  pangu
//
//  Created by jim on 17/1/22.
//  Copyright © 2017年 jim. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupScrollView()
    }
    
    private func setupScrollView(){
//        scrollView.contentOffset = CGPointMake(0, 175)
        view.addSubview(scrollView)
        
        let bannerView = UIView(frame: CGRectMake(0,0,SCREEN_WIDTH,175))
        bannerView.backgroundColor = UIColor.whiteColor()
        scrollView.addSubview(bannerView)
        
        let bannerController = bannerCollectionViewController()
        addChildViewController(bannerController)
        
        let banerVC = childViewControllers[0]
        bannerView.addSubview(banerVC.view)
        
        
        
    }
    //懒加载创建 ScrollView
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.scrollEnabled = true
        scrollView.backgroundColor = UIColor.grayColor()
        scrollView.frame = CGRectMake(0,0,SCREEN_WIDTH,SCREEN_HEIGHT)
        scrollView.contentSize = CGSizeMake(SCREEN_WIDTH,SCREEN_HEIGHT*2)
        return scrollView
    }()
    
}
