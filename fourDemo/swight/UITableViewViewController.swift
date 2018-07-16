//
//  UITableViewViewController.swift
//  fourDemo
//
//  Created by shinaimeng on 2018/7/10.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UITableViewViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    var list : [String]?
    var tableview : UITableView?
    let detint = 12
    let bariint = 0b10001
    let ond = 0o1001
    let hxe = 0x11122

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional stup after loading the view.
        self.list = NSArray(contentsOfFile:
            Bundle.main.path(forResource: "Controls", ofType:"plist")!) as? Array
        
        //创建表视图
        self.tableview = UITableView(frame: self.view.frame, style:.plain)
        self.tableview!.delegate = self
        self.tableview!.dataSource = self
        //创建一个重用的单元格
        self.tableview!.register(UITableViewCell.self,
                                 forCellReuseIdentifier: "SwiftCell")
        self.view.addSubview(self.tableview!)
        
        //创建表头标签
        let frame = CGRect(x:0, y:0, width:self.view.bounds.size.width, height:30)
        let headerLabel = UILabel(frame: frame)
        headerLabel.backgroundColor = UIColor.black
        headerLabel.textColor = UIColor.white
        headerLabel.numberOfLines = 0
        headerLabel.lineBreakMode = .byWordWrapping
        headerLabel.text = "常见 UIKit 控件"
        headerLabel.font = UIFont.italicSystemFont(ofSize: 20)
        self.tableview!.tableHeaderView = headerLabel
        
    }
    
    //在本例中，只有一个分区
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //返回表格行数（也就是返回控件数）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list!.count
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
            cell.textLabel?.text = self.list![indexPath.row]
            return cell
    }
    
    // UITableViewDelegate 方法，处理列表项的选中事件
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableview!.deselectRow(at: indexPath, animated: true)
        
        let itemString = self.list![indexPath.row]
        
        let alertController = UIAlertController(title: "提示!",
                                                message: "你选中了【\(itemString)】", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "确定", style: .default,handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    //滑动删除必须实现的方法
    func tableView(_ tableView: UITableView,
                   commit editingStyle: UITableViewCellEditingStyle,
                   forRowAt indexPath: IndexPath) {
        print("删除\(indexPath.row)")
        let index = indexPath.row
        self.list?.remove(at: index)
        self.tableview?.deleteRows(at: [indexPath],
                                   with: .top)
    }
    
    //滑动删除
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath)
        -> UITableViewCellEditingStyle {
            return UITableViewCellEditingStyle.delete
    }
    
    //修改删除按钮的文字
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt
        indexPath: IndexPath) -> String? {
        return "删"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
