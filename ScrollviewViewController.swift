//
//  ScrollviewViewController.swift
//  HellowSwift
//
//  Created by 甄翰宏 on 16/2/13.
//  Copyright © 2016年 甄翰宏. All rights reserved.
//

import UIKit
var counter : Int = 0
class ScrollviewViewController: UIViewController, UIScrollViewDelegate {
    var myview2 : UIView!
    var scrolleview : UIScrollView!
    var img : UIImageView!
    var imgArr : [String]?
    var pagecontrol : UIPageControl!
    var timer : NSTimer!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.translucent = false
        imgArr = [String]()
        imgArr?.append("tu1.jpg")
        imgArr?.append("tu2.jpg")
        imgArr?.append("tu4.jpg")
        imgArr?.append("ww.png")
        
        print(imgArr?.count)
        
        myview2 = UIView(frame: CGRectMake(0,(UIScreen.mainScreen().bounds.height - 64 - 49)/2 - 100,self.view.frame.size.width,200))
        myview2.backgroundColor = UIColor.blueColor()
        self.view.addSubview(myview2)
        
        scrolleview = UIScrollView(frame: myview2.frame)
        scrolleview.backgroundColor = UIColor.whiteColor()
        scrolleview.scrollEnabled = true
        scrolleview.pagingEnabled = true
        scrolleview.delegate = self
        //scrolleview.bounces = false
        scrolleview.showsHorizontalScrollIndicator = true
        
        self.view.addSubview(scrolleview)
        img = UIImageView()
        img.frame = CGRectMake(0, 0, self.view.frame.width, 200)
        img.backgroundColor = UIColor.cyanColor()
        img.image = UIImage(named: imgArr![0])
        scrolleview.addSubview(img)
        
        
        scrolleview.contentSize = CGSizeMake(self.view.frame.width * CGFloat((imgArr?.count)!), 200)
        pagecontrol = UIPageControl(frame: CGRectMake(self.view.frame.width - 10 - 80,(UIScreen.mainScreen().bounds.height - 64 - 49)/2 + 60 ,80,30))
        
        pagecontrol.backgroundColor = UIColor.clearColor()
        pagecontrol.hidesForSinglePage = true
        pagecontrol.currentPageIndicatorTintColor = UIColor.grayColor()
        pagecontrol.numberOfPages = (imgArr?.count)!
        self.view.addSubview(pagecontrol)
        //设置计时器
        self.timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "timerAction:", userInfo: nil, repeats: true)
        

        // Do any additional setup after loading the view.
    }
    //时间触发器 设置滑动时动画true，会触发的方法
    func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView) {
        self.scrollViewDidEndDecelerating(scrolleview)
    }
    func timerAction(timerr : NSTimer){

 
        scrolleview.setContentOffset(CGPointMake( self.view.frame.size.width * CGFloat(pagecontrol.currentPage + 1),0), animated: true)
        
        
    }
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let index : CGFloat = abs(scrolleview.contentOffset.x / self.view.frame.width)
        img.backgroundColor = UIColor.cyanColor()
        img.frame = CGRectMake(self.view.frame.width * index, 0, self.view.frame.size.width,200)
        img.image = UIImage(named: imgArr![Int(index)])
        scrolleview.addSubview(img)
        pagecontrol.currentPage = Int(index)

    }
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let index : CGFloat = abs(scrolleview.contentOffset.x / self.view.frame.width)
        counter = Int(index)
         let indexx : CGFloat = (scrolleview.contentOffset.x / self.view.frame.width)
        if indexx > CGFloat((imgArr?.count)! - 1){
            scrolleview.scrollRectToVisible(CGRectMake(0, (UIScreen.mainScreen().bounds.height - 64 - 49)/2 - 100, self.view.frame.size.width,200), animated:true)
            
            
        }

        
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
