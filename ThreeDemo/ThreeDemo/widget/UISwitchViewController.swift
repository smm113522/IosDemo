//
//  UISwitchViewController.swift
//  ThreeDemo
//
//  Created by shinaimeng on 2018/7/4.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UISwitchViewController: UIViewController {
 var uiswitch:UISwitch!;
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "开关按钮 UISwitch"
        self.view.backgroundColor = UIColor.white
        
        uiswitch = UISwitch()
        //设置位置（开关大小无法设置）
        uiswitch.center = CGPoint(x:100, y:150)
        //设置默认值
        uiswitch.isOn = true;
        uiswitch.addTarget(self, action: #selector(switchDidChange), for:.valueChanged)
        self.view.addSubview(uiswitch);
        print(uiswitch.isOn)
        // Do any additional setup after loading the view.
    }
    
    @objc func switchDidChange(){
        //打印当前值
        print(uiswitch.isOn)
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
