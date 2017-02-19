

import UIKit
import SVProgressHUD

private let reuseIdentifier = "Cell"

class newProductController: UIView, UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource{

    var images: Array<UIColor> = [UIColor.redColor(),UIColor.orangeColor(),UIColor.yellowColor()]
    var labels: Array<String> = ["甲钴胺片","一次性使用注射笔用针头超细","阿莫西林维酸钾片"]

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    private func setupUI(){
        //新品上架
        let label = UILabel()
        label.frame = CGRectMake(10, 10, 100, 20)
        label.text = "新品上架"
        label.font = UIFont.systemFontOfSize(13)
        addSubview(label)
        
        //更多
        let button = UIButton()
        button.frame = CGRectMake(SCREEN_WIDTH-10-40, 10, 40, 20)
        button.setTitle("更多", forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button.titleLabel?.font = UIFont.systemFontOfSize(15)
        button.addTarget(self, action: Selector("buttonClick"), forControlEvents: .TouchUpInside)
        addSubview(button)
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .Horizontal
        let collection = UICollectionView(frame: CGRectMake(0, 40, SCREEN_WIDTH, 120), collectionViewLayout: flowLayout)
        collection.backgroundColor = UIColor.whiteColor()
        collection.delegate = self
        collection.dataSource = self
        collection.scrollEnabled = false
        collection.registerClass(NewProductCell.classForCoder(), forCellWithReuseIdentifier: reuseIdentifier)
        addSubview(collection)
        
    }
    
    func buttonClick(){
        print("更多")
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count ?? 0
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! NewProductCell
    
        cell.image.backgroundColor = images[indexPath.item]
        cell.label.text = labels[indexPath.item]
    
        return cell
    }

    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        SVProgressHUD.showInfoWithStatus(labels[indexPath.item])
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(SCREEN_WIDTH/3-10, 120)
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(10, 5, 10, 10)
    }

}
