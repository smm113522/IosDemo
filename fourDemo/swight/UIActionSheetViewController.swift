//
//  UIActionSheetViewController.swift
//  fourDemo
//
//  Created by shinaimeng on 2018/7/6.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UIActionSheetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UIActionSheet 使用"
        self.view.backgroundColor = UIColor.white

//        let actionSheet = UIActionSheet()
//        //actionSheet.title = "请选择操作"
//        actionSheet.addButton(withTitle: "取消")
//        actionSheet.addButton(withTitle: "动作1")
//        actionSheet.addButton(withTitle: "动作2")
//        actionSheet.cancelButtonIndex=0
//        actionSheet.delegate=self as! UIActionSheetDelegate
//        actionSheet.show(in: self.view);
//
        // Do any additional setup after loading the view.
    }

    func actionSheet(actionSheet: UIActionSheet, didDismissWithButtonIndex buttonIndex: Int) {
        print("点击了："+actionSheet.buttonTitle(at: buttonIndex)!)
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
