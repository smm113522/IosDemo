//
//  UIAlertViewViewController.swift
//  ThreeDemo
//
//  Created by shinaimeng on 2018/7/4.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UIAlertViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "警告框 UIAlertView"
        self.view.backgroundColor = UIColor.white
        
        let alertView = UIAlertView()
        alertView.title = "系统提示"
        alertView.message = "您确定要离开demo吗？"
        alertView.addButton(withTitle: "取消")
        alertView.addButton(withTitle: "确定")
        alertView.cancelButtonIndex=0
        alertView.delegate=self;
        alertView.show()
        
        //创建一个ContactAdd类型的按钮
        let button:UIButton = UIButton(type:.contactAdd)
        //设置按钮位置和大小
        button.frame = CGRect(x:10, y:70, width:100, height:30)
        //设置按钮文字
        button.setTitle("alertview", for:.normal)
        button.setImage(UIImage(named:"image"),for:.normal)  //设置图标
        
//        button.addTarget(self,  action:#selector(gologin), for: .touchUpInside)
          button.addTarget(self,  action:#selector(alertPass), for: .touchUpInside)
        
        self.view.addSubview(button)
        
        let button1:UIButton = UIButton(type:.contactAdd)
        //设置按钮位置和大小
        button1.frame = CGRect(x:10, y:100, width:100, height:30)
        //设置按钮文字
        button1.setTitle("普通alert", for:.normal)
        
        //        button.addTarget(self,  action:#selector(gologin), for: .touchUpInside)
        button1.addTarget(self,  action:#selector(showAlert), for: .touchUpInside)
        
        self.view.addSubview(button1)
        
        let button2:UIButton = UIButton(type:.contactAdd)
        //设置按钮位置和大小
        button2.frame = CGRect(x:10, y:140, width:100, height:30)
        //设置按钮文字
        button2.setTitle("底部alert", for:.normal)
        
        button2.addTarget(self,  action:#selector(showAlert1), for: .touchUpInside)
        
        self.view.addSubview(button2)
        
        let button3:UIButton = UIButton(type:.contactAdd)
        //设置按钮位置和大小
        button3.frame = CGRect(x:10, y:180, width:100, height:30)
        //设置按钮文字
        button3.setTitle("密码alert", for:.normal)
        
        button3.addTarget(self,  action:#selector(showAlert3), for: .touchUpInside)
        
        self.view.addSubview(button3)
        
        let button4:UIButton = UIButton(type:.contactAdd)
        //设置按钮位置和大小
        button4.frame = CGRect(x:10, y:220, width:100, height:30)
        //设置按钮文字
        button4.setTitle("提示 one", for:.normal)
        
        button4.addTarget(self,  action:#selector(showAlert11), for: .touchUpInside)
        
        self.view.addSubview(button4)
        
        let button5:UIButton = UIButton(type:.contactAdd)
        //设置按钮位置和大小
        button5.frame = CGRect(x:10, y:260, width:130, height:30)
        //设置按钮文字
        button5.setTitle("提示 tomast", for:.normal)
        
        button5.addTarget(self,action:#selector(showAlert2), for: .touchUpInside)
        
        self.view.addSubview(button5)
        
        let button6:UIButton = UIButton(type:.contactAdd)
        //设置按钮位置和大小
        button6.frame = CGRect(x:10, y:300, width:130, height:30)
        //设置按钮文字
        button6.setTitle("修改颜色", for:.normal)
        
        button6.addTarget(self,action:#selector(showAlert4), for: .touchUpInside)
        
        self.view.addSubview(button6)

        // Do any additional setup after loading the view.
    }
    
    func alertView(alertView:UIAlertView, clickedButtonAtIndex buttonIndex: Int){
        if(buttonIndex==alertView.cancelButtonIndex){
            print("点击了取消")
        }else{
            print("点击了确认")
        }
    }
    
    @IBAction func gologin(){
        let controller: LoginViewController = LoginViewController()
        //        controller.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(controller, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var alertView = UIAlertView()
    
    @IBAction func alertPass(){
        alertView.title = "系统登录"
        alertView.message = "请输入用户名和密码！"
        alertView.addButton(withTitle: "取消")
        alertView.addButton(withTitle: "确定")
        alertView.cancelButtonIndex=0
        alertView.delegate=self;
        alertView.alertViewStyle = UIAlertViewStyle.loginAndPasswordInput
        alertView.show()
    }
    @IBAction func showAlert(){
        let alertController = UIAlertController(title: "系统提示",
                                                message: "您确定要离开hangge.com吗？", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "好的", style: .default, handler: {
            action in
            print("点击了确定")
        })
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showAlert11(){
        let alertController = UIAlertController(title: "系统提示",
                                                message: "您确定要离开你好哦吗？", preferredStyle: .alert)
//        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "好的", style: .default, handler: {
            action in
            print("点击了确定")
        })
//        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showAlert1(){
        let alertController = UIAlertController(title: "保存或删除数据", message: "删除数据将不可恢复",
                                                preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        let deleteAction = UIAlertAction(title: "删除", style: .destructive, handler: nil)
        let archiveAction = UIAlertAction(title: "保存", style: .default, handler: nil)
        alertController.addAction(cancelAction)
        alertController.addAction(deleteAction)
        alertController.addAction(archiveAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showAlert2(){
        let alertController = UIAlertController(title: "保存成功!",
                                                message: nil, preferredStyle: .alert)
        //显示提示框
        self.present(alertController, animated: true, completion: nil)
        //两秒钟后自动消失
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            self.presentedViewController?.dismiss(animated: false, completion: nil)
        }
    }
    
    @IBAction func showAlert3(){
        let alertController = UIAlertController(title: "系统登录",
                                                message: "请输入用户名和密码", preferredStyle: .alert)
        alertController.addTextField {
            (textField: UITextField!) -> Void in
            textField.placeholder = "用户名"
        }
        alertController.addTextField {
            (textField: UITextField!) -> Void in
            textField.placeholder = "密码"
            textField.isSecureTextEntry = true
        }
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "好的", style: .default, handler: {
            action in
            //也可以用下标的形式获取textField let login = alertController.textFields![0]
            let login = alertController.textFields!.first!
            let password = alertController.textFields!.last!
            print("用户名：\(login.text) 密码：\(password.text)")
        })
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showAlert4(){
        let alertController = UIAlertController(title: "系统提示",
                                                message: "您确定要离开hangge.com吗？", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "好的", style: .destructive, handler: {
            action in
            print("点击了确定")
        })

        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
 

}
