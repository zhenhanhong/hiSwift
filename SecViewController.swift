//
//  SecViewController.swift
//  HellowSwift
//
//  Created by 甄翰宏 on 16/2/13.
//  Copyright © 2016年 甄翰宏. All rights reserved.
//

import UIKit

class SecViewController: UIViewController, senderValue {
    var textfield : UITextField? = UITextField()
    var scrollview : ScrollviewViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.translucent = false
        // Do any additional setup after loading the view.
        let button1 : UIButton = UIButton(type: UIButtonType.Custom)
        button1.frame = CGRectMake(self.view.frame.size.width / 2 - 100, 20, 200, 40)
        button1.backgroundColor = UIColor.whiteColor()
        button1.setTitle("collectionview", forState: UIControlState.Normal)
        button1.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        button1.layer.borderWidth = 1.0
        button1.tag = 1000
        button1 .addTarget(self, action: "buttonaction:", forControlEvents: UIControlEvents.TouchUpInside)
        button1.layer.borderColor = UIColor.redColor().CGColor
        self.view.addSubview(button1)
        
        
        let button2 : UIButton = UIButton(type: UIButtonType.Custom)
        button2.frame = CGRectMake(self.view.frame.size.width / 2 - 100, button1.frame.origin.y + button1.frame.size.height + 10, 200, 40)
        button2.backgroundColor = UIColor.whiteColor()
        button2.setTitle("传值", forState: UIControlState.Normal)
        button2.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        button2.layer.borderWidth = 1.0
        button2.tag = 2000
        button2 .addTarget(self, action: "buttonaction:", forControlEvents: UIControlEvents.TouchUpInside)
        button2.layer.borderColor = UIColor.redColor().CGColor
        self.view.addSubview(button2)
        
        textfield = UITextField(frame: CGRectMake(self.view.frame.size.width / 2 - 100, button2.frame.origin.y + button2.frame.size.height + 10, 200, 30))
        textfield!.placeholder = "传值"
        textfield!.tag == 10001
        textfield!.borderStyle = UITextBorderStyle.RoundedRect
//        textfield.layer.borderColor = UIColor.blackColor().CGColor
//        textfield.layer.borderWidth = 1.0
        textfield!.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(textfield!)
        
        let button3 : UIButton = UIButton(type: UIButtonType.Custom)
        button3.frame = CGRectMake(self.view.frame.size.width / 2 - 100, textfield!.frame.origin.y + textfield!.frame.size.height + 10, 200, 40)
        button3.backgroundColor = UIColor.whiteColor()
        button3.setTitle("scrollview", forState: UIControlState.Normal)
        button3.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        button3.layer.borderWidth = 1.0
        button3.tag = 3000
        button3 .addTarget(self, action: "buttonaction:", forControlEvents: UIControlEvents.TouchUpInside)
        button3.layer.borderColor = UIColor.redColor().CGColor
        self.view.addSubview(button3)

        
        
    }
    func sendervalues(str: String) {
        textfield?.text = str
    }
    func buttonaction(button : UIButton){
        if button.tag == 1000{
        let collection = CollectionViewController()
        self.navigationController?.pushViewController(collection, animated: true)
        }else if button.tag == 2000{
            let senderValue = SenderValueViewController()
            senderValue.value = textfield!.text
            senderValue.mydelegate = self
                self.navigationController?.pushViewController(senderValue, animated: true)
        }else if button.tag == 3000{
            //let scrollview : ScrollviewViewController!
            scrollview = ScrollviewViewController()
            self.navigationController?.pushViewController(scrollview, animated: true)
            
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
