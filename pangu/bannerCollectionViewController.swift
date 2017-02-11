//
//  bannerCollectionViewController.swift
//  pangu
//
//  Created by jim on 17/2/10.
//  Copyright © 2017年 jim. All rights reserved.
//

import UIKit
import SVProgressHUD
import SnapKit

private let reuseIdentifier = "Cell"

class bannerCollectionViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{

    var banners:Array<UIColor> = [UIColor.redColor(),UIColor.orangeColor(),UIColor.yellowColor(),UIColor.blueColor()]
    var pageControl = UIPageControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = LFGlobalColor()

        setupUI()
    }
    
    private func setupUI(){
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .Horizontal
        let collectionView = UICollectionView(frame: CGRectMake(0, 0, SCREEN_WIDTH, 175), collectionViewLayout: bannerPageControlLayout())
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor.whiteColor()
        collectionView.registerClass(BannerViewCell.classForCoder(), forCellWithReuseIdentifier: reuseIdentifier)
        view.addSubview(collectionView)
        
        pageControl.currentPageIndicatorTintColor = UIColor.whiteColor()
        pageControl.pageIndicatorTintColor = UIColor.lightGrayColor()
        pageControl.numberOfPages = banners.count
        view.addSubview(pageControl)
        
        pageControl.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(collectionView)
            make.centerY.equalTo(collectionView.snp_bottom).offset(-15)
        }
    }




     func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return banners.count ?? 0
    }

     func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! BannerViewCell
        
        cell.backgroundColor = banners[indexPath.item]
    
        return cell
    }
    
     func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        SVProgressHUD.showInfoWithStatus("你点击的是第\(indexPath.item)行")
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(SCREEN_WIDTH-10, 160)
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(5, 5, 5, 5)
        
    }
    //pageControl
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let offsetX = scrollView.contentOffset.x
        let page = offsetX / scrollView.frame.size.width
        pageControl.currentPage = Int(page + 0.5)
    }

}

private class bannerPageControlLayout: UICollectionViewFlowLayout{
    //准备布局(流布图)
    private override func prepareLayout() {
        //设置layout 布局
        //设置每一个cell的大小
        itemSize = CGSizeMake(SCREEN_WIDTH-10, 160)
        //设置每行之间的最小间距
        minimumLineSpacing = 10
        //设置每个item之间的最小间距
        minimumInteritemSpacing = 0
        scrollDirection = .Horizontal
        //设置contentView 属性
        //垂直指示器
        collectionView?.showsVerticalScrollIndicator = false
        //水平指示器
        collectionView?.showsHorizontalScrollIndicator = false
        //指定滚动视图遇到边框后是否反弹
        collectionView?.bounces = false
        //是否能滚动
        collectionView?.pagingEnabled = true
    }
}