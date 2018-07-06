//
//  UIStepperViewController.swift
//  fourDemo
//
//  Created by shinaimeng on 2018/7/6.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UIStepperViewController: UIViewController {

    var stepper:UIStepper!
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UIStepper demo"
        self.view.backgroundColor = UIColor.white
        
        stepper=UIStepper()
        stepper.center = self.view.center
        //设置stepper的范围与初始值
        stepper.maximumValue = 10
        stepper.minimumValue = 1
        stepper.value = 5.5
        //设置每次增减的值
        stepper.stepValue=0.5
        //设置stepper可以按住不放来连续更改值
        stepper.isContinuous=true
        //设置stepper是否循环（到最大值时再增加数值从最小值开始）
        stepper.wraps=true
        stepper.addTarget(self,action:#selector(stepperValueIschanged),
                          for: UIControlEvents.valueChanged)
        self.view.addSubview(stepper)
//        label=UILabel(frame:CGRectMake(100,190,300,30))

        label = UILabel(frame:CGRect(x:100, y:190, width:300, height:30))
//        print(stepper.value)
        label.text = "当前值为：\(stepper.value)"
        self.view.addSubview(label)

        // Do any additional setup after loading the view.
    }

    @objc func stepperValueIschanged(){
        label.text="当前值为：\(stepper.value)"
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
