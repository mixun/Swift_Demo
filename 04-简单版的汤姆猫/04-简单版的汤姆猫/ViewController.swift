//
//  ViewController.swift
//  04-简单版的汤姆猫
//
//  Created by 刘洪宝 on 14-6-5.
//  Copyright (c) 2014年 hongbao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var tom : UIImageView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func runAnimationWithCount(counts: Int, name :NSString){
        
        if tom.isAnimating() {
            return
        }
        
        var images = NSMutableArray()
        
        for i in 0..counts{
            
            var imageName = NSString(format:"%02d", i)
            var filename = "\(name)_\(imageName).jpg"
            
            var bundle = NSBundle.mainBundle()
            var path = bundle.pathForResource(filename, ofType:nil)
            
            var image = UIImage(contentsOfFile: path)
            images.addObject(image)
            
        }
        tom.animationImages = images
        tom.animationRepeatCount = 1
        
        tom.animationDuration = Double(images.count) * 0.05
        tom.startAnimating()
        var delay = tom.animationDuration
        
//        tom.animationImages = nil
        
//        有严重内存问题...暂时没找到定时器方法
        
        
        
        
        
    }

    @IBAction func drink() {
        runAnimationWithCount(81, name: "drink")
    }
    
    @IBAction func knock() {
        runAnimationWithCount(81, name: "knockout")
    }
    
    @IBAction func rightFoot() {
        runAnimationWithCount(30, name: "footRight")
    }

}

