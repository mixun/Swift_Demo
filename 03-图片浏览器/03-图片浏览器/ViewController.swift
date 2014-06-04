//
//  ViewController.swift
//  03-图片浏览器
//
//  Created by 刘洪宝 on 14-6-4.
//  Copyright (c) 2014年 hongbao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var imageView : UIImageView
    @IBOutlet var left : UIButton
    @IBOutlet var right : UIButton
    @IBOutlet var text : UILabel
    
    @IBOutlet var textLabel : UILabel
    
    var data: NSArray!
    var imageData: NSArray{
        get{
            if !data{
                let bundle = NSBundle.mainBundle()
                let path  = bundle.pathForResource("imageData", ofType: "plist")
                 data = NSArray(contentsOfFile:path)
            }
            return data
        }
    
    }
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func leftBtn() {
        index--
        changeData()
        
    }
    @IBAction func rightBtn() {
        index++
        changeData()
    }
    
    func changeData(){
        text.text = "\(index + 1)/\(imageData.count)"
        
        var imageDict = imageData[index] as NSDictionary
        
        var imageName = imageDict["icon"] as NSString
        
        imageView.image = UIImage(named:imageName)
        textLabel.text = imageDict["desc"] as NSString
        
        left.enabled = index != 0
        right.enabled = (self.index != imageData.count - 1)
        
    }
}

