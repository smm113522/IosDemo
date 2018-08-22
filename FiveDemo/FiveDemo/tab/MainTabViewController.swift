//
//  MainTabViewController.swift
//  FiveDemo
//
//  Created by shinaimeng on 2018/7/16.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

// 不知道怎么启动

class MainTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.title = "dd"
        
        var vmain = MainViewController()
        vmain.title = "首页1"

        var vsetting = SettingViewController()
        vsetting.title = "设置1"
        
        let main = UINavigationController(rootViewController: vmain)
        main.tabBarItem.image = UIImage(named: "")
        main.tabBarItem.badgeValue = "!"
        
        let set = UINavigationController(rootViewController: vsetting)
        set.tabBarItem.image = UIImage(named: "")
        set.tabBarItem.badgeValue = "1"
        
        self.selectedIndex = 0
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    

}
