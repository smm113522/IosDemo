//
//  UISegmentedControlViewController.swift
//  ThreeDemo
//
//  Created by shinaimeng on 2018/7/4.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UISegmentedControlViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "分段控件 UISegmentControl"
        self.view.backgroundColor = UIColor.white
        
        let items = ["选项1","选项2","选项3"] 
        let segmented = UISegmentedControl(items:items)
        segmented.center = self.view.center
        segmented.selectedSegmentIndex = 1 //默认选中第二项
        segmented.addTarget(self, action: #selector(segmentDidchange(_:)),
                            for: .valueChanged)  //添加值改变监听
        self.view.addSubview(segmented)
        
        
        // Do any additional setup after loading the view.
    }

    @objc func segmentDidchange(_ segmented:UISegmentedControl){
        //获得选项的索引
        print(segmented.selectedSegmentIndex)
        //获得选择的文字
        print(segmented.titleForSegment(at: segmented.selectedSegmentIndex))
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
