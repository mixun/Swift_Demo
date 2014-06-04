//
//  ViewController.swift
//  02-按钮的基本使用
//
//  Created by 刘洪宝 on 14-6-4.
//  Copyright (c) 2014年 hongbao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var headImage : UIButton
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//移动方法
    @IBAction func btnClick(sender : UIButton) {
        
        move(sender)
        
    }
//缩放方法
    @IBAction func change(sender : UIButton) {
        changeImage(sender)
    }
    
    
    func changeImage(sender: UIButton){
        
        var tempF = self.headImage.frame
        
        UIView.beginAnimations(nil,context: nil)
        UIView.setAnimationDuration(1.0)
        switch sender.tag{
            
        case 5:
            tempF.size.width += 50
            tempF.size.height += 50
        case 6:
            tempF.size.width -= 50
            tempF.size.height -= 50
        default:
            tempF = CGRectZero
        }
        self.headImage.frame = tempF
        
        UIView.commitAnimations()
    }
    
    func move(sender: UIButton){
        var tempF = self.headImage.frame
        
        UIView.beginAnimations(nil,context: nil)
        UIView.setAnimationDuration(1.0)
        switch sender.tag{
            
        case 1:
            tempF.origin.y -= 50
        case 2:
            tempF.origin.y += 50
        case 3:
            tempF.origin.x -= 50
        case 4:
            tempF.origin.x += 50
        default:
            tempF = CGRectZero
        }
        self.headImage.frame = tempF
        UIView.commitAnimations()
        
        
    }

}

