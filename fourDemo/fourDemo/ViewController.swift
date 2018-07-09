//
//  ViewController.swift
//  fourDemo
//
//  Created by shinaimeng on 2018/7/6.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var tableView:UITableView?
    
    var titleArray: [String] = ["UIActionSheet demo","UIPickerView DMEO","UIStepper demo","UIScrollView demo","UIScrollView1 demo","CoreMotion demo","UIDatePicker demo ","UIDatePicker1 ","UIWebViewViewController demo"]
    
    var list : [String] = ["hello","txt","demo","ddde","iii"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "demo"
        self.view.backgroundColor = UIColor.white
        
        //创建表视图
        self.tableView = UITableView(frame: self.view.frame, style:.plain)
        
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        //        创建一个重用的单元格
        self.tableView!.register(UITableViewCell.self,
                                 forCellReuseIdentifier: "SwiftCell")
        self.view.addSubview(self.tableView!)
        
    }
    
    //在本例中，只有一个分区
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //返回表格行数（也就是返回控件数）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.titleArray.count
    }
    
    //创建各单元显示内容(创建参数indexPath指定的单元）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            //为了提供表格显示性能，已创建完成的单元需重复使用
            let identify:String = "SwiftCell"
            //同一形式的单元格重复使用，在声明时已注册
            let cell = tableView.dequeueReusableCell(withIdentifier: identify,
                                                     for: indexPath)
            cell.accessoryType = .disclosureIndicator
            cell.textLabel?.text = self.titleArray[indexPath.row]
            //            cell.textLabel?.text = "12--"
            return cell
    }
    
    
    // UITableViewDelegate 方法，处理列表项的选中事件
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView!.deselectRow(at: indexPath, animated: true)
        let postion = indexPath.row
        
        var controller : UIViewController? = nil
        
        switch postion {
        case 0:
            controller = UIActionSheetViewController()
        case 1:
            controller = UIPickerViewViewController()
            break
        case 2:
            controller = UIStepperViewController()
            break
        case 3:
            controller = UIScrollViewViewController()
            break
        case 4:
            controller = UIScrollView1ViewController()
            break
        case 5:
            controller = CoreMotionViewController()
            break
        case 6:
            controller = UIDatePickerViewController()
            break
        case 7:
            controller = UIDatePicker1ViewController()
            break
        case 8:
            controller = UIWebViewViewController()
            break
        default:
            controller = UIActionSheetViewController()
            break
        }
        
        self.navigationController?.pushViewController(controller!, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

