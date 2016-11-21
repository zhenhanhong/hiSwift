//
//  CollectionViewController.swift
//  HellowSwift
//
//  Created by 甄翰宏 on 16/2/13.
//  Copyright © 2016年 甄翰宏. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.translucent = false
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10)
        layout.itemSize = CGSizeMake(self.view.frame.width - 20, 120)
        layout.scrollDirection = UICollectionViewScrollDirection.Vertical
        let collectionview : UICollectionView = UICollectionView(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height - 64), collectionViewLayout: layout)
        collectionview.delegate = self
        collectionview.dataSource = self
        collectionview.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "UICollectionViewCell")
        collectionview.registerNib(UINib(nibName: "MYCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MYCollectionViewCell")
        collectionview.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(collectionview)
        
        

        // Do any additional setup after loading the view.
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell : MYCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("MYCollectionViewCell", forIndexPath: indexPath) as! MYCollectionViewCell
       // cell.backgroundColor = UIColor.yellowColor()
        cell.brief.text = "我弄弄还哦的哈佛安徽省地方好诶哈佛爱护我覅"
        return cell
        
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
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
