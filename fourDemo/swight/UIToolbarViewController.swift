//
//  UIToolbarViewController.swift
//  fourDemo
//
//  Created by shinaimeng on 2018/7/9.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UIToolbarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
            
        self.title = "UIToolbar"
        self.view.backgroundColor = UIColor.white

        // Do any additional setup after loading the view.
        
        // 创建一个浏览器工具条，并设置它的大小和位置
        let browserToolbar =  UIToolbar(frame:CGRect(x:0, y:120, width:self.view.frame.size.width, height:44))
        
        // 将工具条添加到当前应用的界面中
        self.view.addSubview(browserToolbar)
        
        //创建后退按钮
//        let btnback =  UIBarButtonItem(barButtonSystemItem:UIImage(named:"me.png"),
//                                       target:self, action: .plain)
        
        //第一个分隔按钮
        let btngap1 =  UIBarButtonItem(barButtonSystemItem:.flexibleSpace,
                                       target:nil,
                                       action:nil)
        
        let image = UIImage(named:"me")
        
        
        //定义控件x:0 y:100 width:64 height:64
        let imageView = UIImageView(frame: CGRect(x: 0, y: 100, width: 64, height: 64))
        self.view.addSubview(imageView)
        //设置显示的图片
//        let image = UIImage(named: "me")
        imageView.image = image
        
        
        // 创建前进按钮 UIBarButtonItem
//        let btnforward = UIBarButtonItem(barButtonSystemItem:UIImage(named:"me.png"),
//                                         target:self, action: .plain)
        
        // 第二个分隔按钮，创建一个可伸缩的UIBarButtonItem
        let btngap2 =  UIBarButtonItem(barButtonSystemItem:.flexibleSpace,
                                       target:nil,
                                       action:nil)
//        普通文字
        let btnback = UIBarButtonItem.init(title: "前进", style: UIBarButtonItemStyle.plain, target: self, action: #selector(forwardClicked(_:)))
        
//        let backimg = UIImage.init(name:"me")
//        普通图片
        let goback = UIBarButtonItem.init(image: image, style: UIBarButtonItemStyle.plain, target: self, action: #selector(forwardClicked(_:)))
        
        let btnback1 =  UIBarButtonItem(image:UIImage(named:"circle_blue.png"),landscapeImagePhone:UIImage(named:"home_gray.png"),
                                        style:UIBarButtonItemStyle.bordered, target:self,action:Selector("forwardClicked:"));
        let btn4 =  UIBarButtonItem(barButtonSystemItem:UIBarButtonSystemItem.reply,
                                    target:nil, action:nil);
        //添加按钮
        browserToolbar.setItems([goback, btnback1, btnback,btn4], animated: false)
        
        self.view.addSubview(browserToolbar)
        
    }
    
    //前进
    @objc func forwardClicked(_ sender:UIBarButtonItem) {
        
    }
    
    @IBAction func backClick() {
        //后退
        print("后退按钮点击")
    }
    
    @IBAction func forwardClick() {
        //前进
        print("前进按钮点击")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
