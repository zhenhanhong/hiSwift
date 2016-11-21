//
//  SenderValueViewController.swift
//  HellowSwift
//
//  Created by 甄翰宏 on 16/2/13.
//  Copyright © 2016年 甄翰宏. All rights reserved.
//

import UIKit
protocol senderValue{
    func sendervalues(str : String)
    
}

class SenderValueViewController: UIViewController {
    
   internal var value : String?
    var mydelegate : senderValue!
    var textfield : UITextField!
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.translucent = false
        let button2 : UIButton = UIButton(type: UIButtonType.Custom)
        button2.frame = CGRectMake(self.view.frame.size.width / 2 - 100, 20, 200, 40)
        button2.backgroundColor = UIColor.whiteColor()
        button2.setTitle("传值", forState: UIControlState.Normal)
        button2.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        button2.layer.borderWidth = 1.0
        button2.tag = 2000
        button2 .addTarget(self, action: "buttonaction:", forControlEvents: UIControlEvents.TouchUpInside)
        button2.layer.borderColor = UIColor.redColor().CGColor
        self.view.addSubview(button2)
        
        textfield = UITextField(frame: CGRectMake(self.view.frame.size.width / 2 - 100, button2.frame.origin.y + button2.frame.size.height + 10, 200, 30))
        textfield.placeholder = "回传"
        textfield.borderStyle = UITextBorderStyle.RoundedRect
        //        textfield.layer.borderColor = UIColor.blackColor().CGColor
        //        textfield.layer.borderWidth = 1.0
        textfield.text = value
        textfield.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(textfield)

        // Do any additional setup after loading the view.
    }
    func buttonaction(button : UIButton){
        if button.tag == 2000{
            self.mydelegate!.sendervalues(textfield.text!)
            self.navigationController?.popViewControllerAnimated(true)
   
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
