//
//  UILabelViewController.swift
//  ThreeDemo
//
//  Created by shinaimeng on 2018/7/4.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UILabelViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "标签 UILabel"
        self.view.backgroundColor = UIColor.white
        
//        let item = UIBarButtonItem(title: "返回", style: .plain, target: self, action: nil)
//        self.navigationItem.leftBarButtonItem = item;
        
//        let leftBarBtn = UIBarButtonItem(title: "返回", style: .plain, target: self,
//                                         action: nil)
//        self.navigationItem.leftBarButtonItem = leftBarBtn
        
        //设置标签x坐标：10，y坐标：20，长：300，宽：100
        let label = UILabel(frame:CGRect(x:10, y:20, width:300, height:100))
        label.text = "label 使用"
        
        label.textColor = UIColor.white //白色文字
        label.backgroundColor = UIColor.black //黑色背景
        label.textAlignment = .right//文字右对齐
        
        self.view.addSubview(label);
        
        let txt = UILabel(frame:CGRect(x:30,y:100,width:300,height:100))
        txt.text = "hello"
        self.view.addSubview(txt)
        
        let textview = UITextView(frame:CGRect(x:10, y:200, width:200, height:100))
        textview.layer.borderWidth = 1  //边框粗细
        textview.layer.borderColor = UIColor.gray.cgColor //边框颜色
        self.view.addSubview(textview)
        
        let mail = UIMenuItem(title: "邮件", action: #selector(onMail))
        let weixin = UIMenuItem(title: "微信", action: #selector(onWeiXin))
        let menu = UIMenuController()
        menu.menuItems = [mail,weixin]
        
        // Do any additional setup after loading the view.
    }

    @objc func onMail(){
        print("mail")
    }
    
    @objc func onWeiXin(){
        print("weixin")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
