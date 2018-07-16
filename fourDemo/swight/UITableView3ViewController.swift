//
//  UITableView3ViewController.swift
//  fourDemo
//
//  Created by shinaimeng on 2018/7/10.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UITableView3ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView:UITableView?
    
    var allnames:Dictionary<Int, [String]>!
    
    var adHeaders:[String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //初始化数据，这一次数据，我们放在属性列表文件里
        self.allnames =  [
            0:[String]([
                "UILabel 标签",
                "UITextField 文本框",
                "UIButton 按钮"]),
            1:[String]([
                "UIDatePiker 日期选择器",
                "UIToolbar 工具条",
                "UITableView 表格视图"])
        ];
        
        print(self.allnames)
        
        self.adHeaders = [
            "常见 UIKit 控件",
            "高级 UIKit 控件"
        ]
        
        //创建表视图
        self.tableView = UITableView(frame:self.view.frame, style:.grouped)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        //创建一个重用的单元格
        self.tableView!.register(UITableViewCell.self, forCellReuseIdentifier: "SwiftCell")
        self.view.addSubview(self.tableView!)
        
        //创建表头标签
        let headerLabel = UILabel(frame: CGRect(x:0, y:0,
                                                width:self.view.bounds.size.width, height:30))
        headerLabel.backgroundColor = UIColor.black
        headerLabel.textColor = UIColor.white
        headerLabel.numberOfLines = 0
        headerLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        headerLabel.text = "高级 UIKit 控件"
        headerLabel.font = UIFont.italicSystemFont(ofSize: 20)
        self.tableView!.tableHeaderView = headerLabel

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //在本例中，有2个分区
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //返回表格行数（也就是返回控件数）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let data = self.allnames?[section]
        return data!.count
    }
    
    
    // UITableViewDataSource协议中的方法，该方法的返回值决定指定分区的头部
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int)
        -> String? {
            var headers =  self.adHeaders!;
            return headers[section];
    }
    
    // UITableViewDataSource协议中的方法，该方法的返回值决定指定分区的尾部
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int)
        -> String? {
            let data = self.allnames?[section]
            return "有\(data!.count)个控件"
    }
    
    //创建各单元显示内容(创建参数indexPath指定的单元）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            //为了提供表格显示性能，已创建完成的单元需重复使用
            let identify:String = "SwiftCell"
            
            //同一形式的单元格重复使用，在声明时已注册
            let secno = indexPath.section
            let data = self.allnames?[secno]
            if(secno == 0)
            {
                let cell = tableView.dequeueReusableCell(withIdentifier: identify,
                                                         for: indexPath as IndexPath) as UITableViewCell
                cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
                
                let image = UIImage(named:"me.png")
                cell.imageView?.image = image
                cell.textLabel?.text = data![indexPath.row]
                
                return cell
            }
            else
            {
                //第二个分组表格使用详细标签
                let adcell = UITableViewCell(style: UITableViewCellStyle.subtitle,
                                             reuseIdentifier: "SwiftCell")
                adcell.textLabel?.text = data![indexPath.row]
                print(adcell.textLabel!.text ?? "")
                adcell.detailTextLabel!.text = "这是\(data![indexPath.row])的说明"
                
                return adcell;
            }
    }
    
    // UITableViewDelegate 方法，处理列表项的选中事件
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView!.deselectRow(at: indexPath as IndexPath, animated: true)
        
        let itemString = self.allnames![indexPath.section]![indexPath.row]
        
        let alertController = UIAlertController(title: "提示",
                                                message: "你选中了【\(itemString)】",
            preferredStyle: .alert)
        let okAction = UIAlertAction(title: "确定", style: .cancel, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}
