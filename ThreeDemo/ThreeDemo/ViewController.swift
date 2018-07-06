//
//  ViewController.swift
//  ThreeDemo
//
//  Created by shinaimeng on 2018/7/4.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource {
    let btn: UIButton = UIButton()//没有样式
    
    var tableView:UITableView?
    
    var titleArray: [String] = ["标签 UILabel", "文本框  UITextField", "开关按钮 UISwitch", "分段控件 UISegmentControl", "图像 UIImageVie", "进度条 UIProgressView","滑动条 UISlider","警告框 UIAlertView"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "常见 UIKit 控件"
        
        self.view.backgroundColor = UIColor.orange
        // Do any additional setup after loading the view, typically from a nib.
        initSrose()
//        initButtom()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func initSrose(){
        
        //创建表视图
        self.tableView = UITableView(frame: self.view.frame, style:.plain)
        
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
//        创建一个重用的单元格
        self.tableView!.register(UITableViewCell.self,
                                 forCellReuseIdentifier: "SwiftCell")
        self.view.addSubview(self.tableView!)
        
//        //创建表头标签
//        let frame = CGRect(x:0, y:0, width:self.view.bounds.size.width, height:30)
//        let headerLabel = UILabel(frame: frame)
//        headerLabel.backgroundColor = UIColor.black
//        headerLabel.textColor = UIColor.white
//        headerLabel.numberOfLines = 0
//        headerLabel.lineBreakMode = .byWordWrapping
//        headerLabel.text = "常见 UIKit 控件"
////        headerLabel.font = UIFont.italicSystemFont(ofSize: 20)
//        self.tableView!.tableHeaderView = headerLabel
        
    }
    //在本例中，只有一个分区
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //返回表格行数（也就是返回控件数）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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
            controller = UILabelViewController()
            break
        case 1:
            controller = UITextFieldController()
            break
        case 2:
            controller = UISwitchViewController()
            break
        case 3:
            controller = UISegmentedControlViewController()
            break
        case 4:
            controller = UIImageViewViewController()
            break
        case 5:
            controller = UIProgressViewViewController()
            break
        case 6:
            controller = UISliderViewController()
            break
        case 7:
            controller = UIAlertViewViewController()
            break
        default:
            controller = LoginViewController()
            break
        }
        
        //                controller.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(controller!, animated: true)
//        let itemString = self.titleArray[indexPath.row]
//
//        let alertController = UIAlertController(title: "提示!",
//                                                message: "你选中了【\(itemString)】", preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "确定", style: .default,handler: nil)
//        alertController.addAction(okAction)
//        self.present(alertController, animated: true, completion: nil)
    }
    
    //滑动删除必须实现的方法
    func tableView(_ tableView: UITableView,
                   commit editingStyle: UITableViewCellEditingStyle,
                   forRowAt indexPath: IndexPath) {
        print("删除\(indexPath.row)")
//        let index = indexPath.row
//        self.titleArray.remove(at: index)
//        self.tableView?.deleteRows(at: [indexPath],
//                                   with: .top)
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
    
//    测试第一个demo
    @IBAction func gologin(){
        let controller: LoginViewController = LoginViewController()
//                controller.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func initButtom(){
        self.btn.frame = CGRect(x:20, y:150, width:200, height:30)
        self.btn.setTitle("普通2222", for: .normal)
        //省略尾部文字
        btn.titleLabel?.lineBreakMode = .byWordWrapping
        self.btn.setTitleColor(UIColor.red, for: .normal) //普通状态下文字的颜色
        self.view.addSubview(btn)
        
        
        btn.addTarget(self,  action:#selector(gologin), for: .touchUpInside)
        
    }


}

