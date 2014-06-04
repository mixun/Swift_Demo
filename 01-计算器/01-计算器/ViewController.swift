//
//  ViewController.swift
//  01-计算器
//
//  Created by 刘洪宝 on 14-6-4.
//  Copyright (c) 2014年 hongbao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var number1 : UITextField
    @IBOutlet var number2 : UITextField
    @IBOutlet var result : UILabel
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func count() {
        
        var num1 = self.number1.text
        var num2 = self.number2.text
        
        var sum = num1.toInt()! + num2.toInt()!
        
        self.result.text = "\(sum)"
        
    }

}

