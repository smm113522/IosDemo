//
//  UIDatePickerViewController.swift
//  fourDemo
//
//  Created by shinaimeng on 2018/7/6.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UIDatePickerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UIDatePicker demo"
        self.view.backgroundColor = UIColor.white
        
        //创建一个ContactAdd类型的按钮
        let button1:UIButton = UIButton(type:.infoLight)
        //设置按钮位置和大小
        button1.frame = CGRect(x:10, y:70, width:100, height:30)
        //设置按钮文字
        button1.setTitle("yyyy年MM月dd日 HH:mm:ss", for:.normal)
        button1.setImage(UIImage(named:"image"),for:.normal)  //设置图标
        
        button1.addTarget(self,  action:#selector(showDate), for: .touchUpInside)
        
        self.view.addSubview(button1)
        
        //创建日期选择器
        let datePicker = UIDatePicker(frame: CGRect(x:0, y:0, width:320, height:216))
        //将日期选择器区域设置为中文，则选择器日期显示为中文
        datePicker.locale = Locale(identifier: "zh_CN")
        
        //将日期选择器区域设置为中文，则选择器日期显示为中文
//        datePicker.locale = Locale(identifier: "zh_CN")
//        日期
//        datePicker.datePickerMode = .date
        // 时间选择
        datePicker.datePickerMode = .time
//        比如我们将文字改成白色：
//        datePicker.setValue(UIColor.white, forKey: "textColor")
        
        //注意：action里面的方法名后面需要加个冒号“：”
        datePicker.addTarget(self, action: #selector(dateChanged),
                             for: .valueChanged)
        self.view.addSubview(datePicker)

        // Do any additional setup after loading the view.
    }
    
    @objc func showDate(){
        let dpicker = UIDatePicker()
        
        let date = dpicker.date
        
        // 创建一个日期格式器
        let dformatter = DateFormatter()
        // 为日期格式器设置格式字符串
        dformatter.dateFormat = "yyyy年MM月dd日 HH:mm:ss"
        // 使用日期格式器格式化日期、时间
        let datestr = dformatter.string(from: date)
        
        let message =  "您选择的日期和时间是：\(datestr)"
        
        // 创建一个UIAlertController对象（消息框），并通过该消息框显示用户选择的日期、时间
        let alertController = UIAlertController(title: "当前日期和时间",
                                                message: message,
                                                preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "确定", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
        
    }

    //日期选择器响应方法
    @objc func dateChanged(datePicker : UIDatePicker){
        //更新提醒时间文本框
        let formatter = DateFormatter()
        //日期样式
        formatter.dateFormat = "yyyy年MM月dd日 HH:mm:ss"
        print(formatter.string(from: datePicker.date))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
