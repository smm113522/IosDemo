//
//  UISliderViewController.swift
//  ThreeDemo
//
//  Created by shinaimeng on 2018/7/4.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UISliderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "滑动条 UISlider"
        self.view.backgroundColor = UIColor.white
        

        let slider = UISlider(frame:CGRect(x:0, y:0, width:300, height:50))
        slider.center = self.view.center
        slider.minimumValue = 0  //最小值
        slider.maximumValue = 1  //最大值
        slider.value = 0.5  //当前默认值
        self.view.addSubview(slider)
        
        // Do any additional setup after loading the view.
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
