//
//  PPViewController1.swift
//  PPBadgeViewSwift
//
//  Created by AndyPang on 2017/6/19.
//  Copyright © 2017年 AndyPang. All rights reserved.
//

import UIKit

class PPViewController1: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "首页"
  
        /**
         iOS11系统下 -(void)viewDidLoad中获取不到UIBarButtonItem的实例,demo为了演示效果做了0.001s的延时操作,
         在实际开发中,badge的显示是在网络请求成功/推送之后,所以不用担心获取不到UIBarButtonItem添加不了badge
         */
        if (UIDevice.current.systemVersion as NSString).doubleValue >= 11.0 {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.01, execute: {
                self.setupBadges()
            })
            return
        }
        
        setupBadges()
    }

    func setupBadges() {
        
        // 1.给UIBarButtonItem添加badge
        // 1.1 左边
        //self.navigationItem.leftBarButtonItem?.pp.addBadge(number: 1)
        // 调整badge大小
//        self.navigationItem.leftBarButtonItem?.pp.setBadgeHeight(points: 21.0)
        // 调整badge的位置
//        self.navigationItem.leftBarButtonItem?.pp.moveBadge(x: -7, y: 5)
        // 自定义badge的属性: 字体大小/颜色, 背景颜色...(默认系统字体13,白色,背景色为系统badge红色)
//        self.navigationItem.leftBarButtonItem?.pp.setBadgeLabel(attributes: { (badgeLabel) in
//            // badgeLabel.font = UIFont.systemFont(ofSize: 13)
//            // badgeLabel.textColor = UIColor.blue
//        })
//
        // 1.2 右边
//        self.navigationItem.rightBarButtonItem?.pp.addBadge(number: 5000000)
//        self.navigationItem.rightBarButtonItem?.pp.moveBadge(x: -5, y: 0)
//        self.navigationItem.rightBarButtonItem?.pp.setBadge(flexMode: .head)
    }
    
    
    
    
}


