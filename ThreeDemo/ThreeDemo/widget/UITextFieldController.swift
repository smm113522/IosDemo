//
//  UIButtonViewController.swift
//  ThreeDemo
//
//  Created by shinaimeng on 2018/7/4.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UITextFieldController: UIViewController ,UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "文本框  UITextField"
        self.view.backgroundColor = UIColor.white
        
        let textField = UITextField(frame: CGRect(x:10, y:70, width:200, height:30))
        //设置边框样式为圆角矩形
        textField.borderStyle = UITextBorderStyle.roundedRect
        self.view.addSubview(textField)

        textField.borderStyle = .none //先要去除边框样式
        textField.background = UIImage(named:"background1");
        
        //修改圆角半径的话需要将masksToBounds设为true
//        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 12.0  //圆角半径
        textField.layer.borderWidth = 2.0  //边框粗细
        textField.layer.borderColor = UIColor.black.cgColor //边框颜色
        
        textField.placeholder="请输入用户名"
        
        textField.clearButtonMode = .whileEditing  //编辑时出现清除按钮
//        textField.clearButtonMode = .unlessEditing  //编辑时不出现，编辑后才出现清除按钮
//        textField.clearButtonMode = .always  //一直显示清除按钮
        
//        textField.isSecureTextEntry = true //输入内容会显示成小黑点

        // Do any additional setup after loading the view.
        
        let textFields = UITextField(frame: CGRect(x:10,y:160,width:200,height:30))
        //设置边框样式为圆角矩形
        textFields.borderStyle = UITextBorderStyle.roundedRect
        textFields.returnKeyType = UIReturnKeyType.done
        textFields.delegate=self
        self.view.addSubview(textFields)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //收起键盘
        textField.resignFirstResponder()
        //打印出文本框中的值
        print(textField.text ?? "")
        return true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
