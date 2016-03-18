//
//  File.swift
//  swiftTest1
//
//  Created by zaiwei on 16/3/14.
//  Copyright © 2016年 zaiwei. All rights reserved.
//

import Foundation
import UIKit
class FileVC: UIViewController  ,UITableViewDelegate, UITableViewDataSource{
//    var tableView : UITableView?
 
    var tableVi : UITableView?
    var arrData = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.yellowColor()
        
        self.tableVi = UITableView(frame: self.view.bounds, style: .Plain)
        //            UITableView.init(frame: self.view.bounds, style: .Plain)
        self.tableVi!.delegate = self
        self.tableVi!.dataSource = self
        self.tableVi?.rowHeight = 50
        self.tableVi?.separatorColor = UIColor.groupTableViewBackgroundColor()
        self.view.addSubview(self.tableVi!)
        
        
        
        var arr = ["b","aa","ab","bc","c"]
        var arr2 = arr.sort() //按字母顺序排序 系统方法
        var arr4 = arr.sort(sortBy) //按预定条件排序 自定义方法
        var arr3 = arr.sort { (s1, s2) -> Bool in return s1 > s2 } //block方法
        var arr34 = arr.sort({s1,s2 in s1>s2})//block缩写
        var arr32 = arr.sort({$0>$1})//隐身参数block缩写
        var arr35 = arr.sort(<)//极简写法
        
    
        
//        self.arrData = NSMutableArray()
        for i in 1...20{
            arrData.append(String(i))
        }
        
        
        self.title = "hhh"
        //修改标题
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(
            title: "右标",
            style: .Plain,
            target: self,
            action: Selector("navClick")
        )
        
        
//        //创建按钮
//        let button = UIButton(type: .System)
//        button.frame = CGRectMake(100, 100, 100, 100)
//        button.setTitle("按钮", forState: .Normal)
//        button.backgroundColor = UIColor.redColor()
//        button.addTarget(
//            self,
//            action: Selector("buttonClick:"),
//            forControlEvents: .TouchUpInside
//        )
//        self.view.addSubview(button)
        
        
        
        
        
    }
 
    func sortBy (value1: String, value2: String) -> Bool {
        return value1 > value2
    }
    
    func buttonClick(button:UIButton){
        let VC = UIViewController.init()
        VC.view.backgroundColor = UIColor.whiteColor()
        //压盏
        self.navigationController?.pushViewController(VC, animated: true)
    }
    func navClick() {
        print("导航点击")
    }
    
//    MARK: - UITableViewDelegate, UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.arrData.count
    }
    //do:
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell = tableView.dequeueReusableCellWithIdentifier("ggg")
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "ggg")
            cell!.textLabel!.textAlignment = .Center
            
        }
        cell?.textLabel?.text = self.arrData[indexPath.row]
//        print(self.arrData![indexPath.row])
        return cell!
    }
 
    

}