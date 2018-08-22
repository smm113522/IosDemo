//
//  TabViewController.swift
//  FiveDemo
//
//  Created by shinaimeng on 2018/7/16.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class TabViewController: UIViewController ,UITabBarDelegate {
    
    //添加Tab Bar控件
    var tabBar:UITabBar!
    //Tab Bar Item的名称数组
    var tabs = ["公开课","全栈课","设置"]
    //Tab Bar上方的容器
    var contentView:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //在底部创建Tab Bar
        tabBar = UITabBar(frame:CGRect(x:0, y:self.view.bounds.height - 50,
                                       width:self.view.bounds.width, height:50))
        var items:[UITabBarItem] = []
        for tab in self.tabs {
            let tabItem = UITabBarItem()
            tabItem.title = tab
            items.append(tabItem)
        }
        
    
        //设置Tab Bar的标签页
        tabBar.setItems(items, animated: true)
        //本类实现UITabBarDelegate代理，切换标签页时能响应事件
        tabBar.delegate = self
        //代码添加到界面上来
        self.view.addSubview(tabBar);
//        选中 tab
        tabBar.selectedItem = items[0]
        
        //上方的容器
        contentView = UIView(frame: CGRect(x:0, y:0, width:self.view.bounds.width,
                                           height:self.view.bounds.height-50))
        self.view.addSubview(contentView)
        let lbl = UILabel(frame:CGRect(x:100, y:200, width:100, height:20))
        //定义tag，在用户切换tab时能查询到label控件
        lbl.tag = 1
        contentView.addSubview(lbl)
//        显示内容
        (contentView.viewWithTag(1) as! UILabel).text = items[0].title
    }
    
    // UITabBarDelegate协议的方法，在用户选择不同的标签页时调用
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        //通过tag查询到上方容器的label，并设置为当前选择的标签页的名称
        (contentView.viewWithTag(1) as! UILabel).text = item.title
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
