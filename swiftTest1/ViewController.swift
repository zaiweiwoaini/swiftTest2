//
//  ViewController.swift
//  swiftTest1
//
//  Created by zaiwei on 16/3/14.
//  Copyright © 2016年 zaiwei. All rights reserved.
//

import UIKit



class ViewController: UIViewController
{

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        

        
        
        
        
        let button = UIButton(type: .System)
        button.frame = CGRectMake(10, 10, 100, 100);
        button.backgroundColor = UIColor.redColor()
        button.setTitle("我是一个按钮", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        self.view.addSubview(button)
        button.addTarget(self, action: Selector("buttonClick:"), forControlEvents: .TouchUpInside)
        
    }
    func buttonClick(button:UIButton){
        print("")
        
        self.navigationController?.pushViewController(FileVC.init(), animated: true)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

