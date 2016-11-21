//
//  ViewController.swift
//  HellowSwift
//
//  Created by 甄翰宏 on 16/2/12.
//  Copyright © 2016年 甄翰宏. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    let tapRec = UITapGestureRecognizer()
    let viewTap = UITapGestureRecognizer()
    var timer:NSTimer!
    var timer2 = NSTimer()
  //  let alert = UIAlertController()
    var myview = UIView()
    var mybutton = UIButton()
    var tableview = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
//        let label = UILabel(frame:CGRect(origin: CGPointMake(10.0, 50.0), size: CGSizeMake(150,50)))//let 是Swift 表示常量的关键字
//        label.text = "This is a Label"
//        self.view.addSubview(label)
        #if false
        //创建label
        let label = UILabel(frame: CGRect(origin: CGPointMake(10, 199), size: CGSizeMake(200, 40)))
        label.text = "this my label"
      //  label.tag = 1000
        label.backgroundColor = UIColor .redColor()
        label.layer.borderColor = UIColor.grayColor().CGColor
        label.layer.borderWidth = 1.0
        self.view.addSubview(label)
        label.userInteractionEnabled = true
       // label.addGestureRecognizer(UIGestureRecognizer(target: self, action: "action"))
        tapRec.addTarget(self, action: "action")
        label.addGestureRecognizer(tapRec)
        //创建view
        myview = UIView(frame: CGRect(origin: CGPointMake(19, 250), size: CGSizeMake(200, 40)))
        myview.backgroundColor = UIColor.grayColor()
        
        self.view.addSubview(myview)
        myview.userInteractionEnabled = true
        viewTap.addTarget(self, action: "viewaction")
        
        myview.addGestureRecognizer(viewTap)
//创建button
        mybutton = UIButton(type: UIButtonType.Custom)
        mybutton.backgroundColor = UIColor.blueColor()
        mybutton.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        let frame = CGRectMake(10 , 300, 200, 40)
        mybutton.frame = frame
        mybutton.tag = 1000
        mybutton.titleLabel?.font = UIFont.systemFontOfSize(17)
        mybutton.setImage(UIImage(named: ""), forState: UIControlState.Normal)
        mybutton.setTitle("button", forState: UIControlState.Normal)
        mybutton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        mybutton.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Right
        self.view.addSubview(mybutton)
#endif
        #if true
        
        //创建tableview
        let frame1 = CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, UIScreen.mainScreen().bounds.size.height)
        tableview = UITableView(frame: frame1, style: UITableViewStyle.Plain)
        tableview.dataSource = self
        tableview.delegate = self
        tableview.separatorStyle = UITableViewCellSeparatorStyle.SingleLine
        tableview.separatorColor = UIColor.grayColor()
        tableview.backgroundColor = UIColor.clearColor()
        tableview.registerClass(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        tableview.registerNib(UINib(nibName: "MyTableViewCell", bundle: nil), forCellReuseIdentifier: "MyTableViewCell")
            
        self.view.addSubview(tableview)
        #endif
        
        
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell  {
//        tableview .deselectRowAtIndexPath(indexPath, animated: true)
        tableview.deselectRowAtIndexPath(indexPath, animated: true)
        let mycell : MyTableViewCell = tableview.dequeueReusableCellWithIdentifier("MyTableViewCell", forIndexPath:indexPath) as! MyTableViewCell
      //  mycell.textLabel?.text = "你好"
       // mycell.backgroundColor = UIColor.grayColor()
        mycell.title.text = "你好"
        mycell.subtitle.text = "你搜发哦少年发生的烦恼问佛请问哦覅奶水牛佛爱上你佛爱你的身份你哦啊是念佛按哦奶粉内外年轻佛为南方"
        mycell.img.image = UIImage(named: "meinv.jpg")
        return mycell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableview .deselectRowAtIndexPath(indexPath, animated: true)
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    
    func action(){
        print("label")
        
        
    }
    func viewaction(){
        print("view")
    // 强制类型转换 as!
        let buttonmy = self.view.viewWithTag(1000) as! UIButton
       
        
        buttonmy.setTitle("错了", forState: UIControlState.Normal)
        
        
    }
    func timeraction(){
        self .dismissViewControllerAnimated(true, completion: nil)
        
    }
    func buttonAction(button : UIButton){
        button.selected = !button.selected
        if button.selected{
            print("button")
            //创建uialertviewcontroller
            
           let alert = UIAlertController(title: "提示", message: "你好", preferredStyle: UIAlertControllerStyle.Alert)
            let cancel = UIAlertAction(title: "cancel", style: UIAlertActionStyle.Cancel, handler: { (action : UIAlertAction!) -> Void in
                
            })
            let ok = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: { (action:UIAlertAction!) -> Void in
              print("ok")
            })
            alert.addAction(cancel)
            alert.addAction(ok)
            self.presentViewController(alert, animated: true, completion: { () -> Void in
                
            })
            
            timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "timeraction", userInfo: nil, repeats: false)
            
            
            
            
            
            
        }else{
            print("取消")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

