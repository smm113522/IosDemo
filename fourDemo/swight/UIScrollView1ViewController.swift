//
//  UIScrollView1ViewController.swift
//  fourDemo
//
//  Created by shinaimeng on 2018/7/6.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UIScrollView1ViewController: UIViewController {
    
    let numOfPages = 3
    let pageWidth = 320
    let pageHeight = 360
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scrollView = UIScrollView()
        scrollView.frame = self.view.bounds
        //为了让内容横向滚动，设置横向内容宽度为3个页面的宽度总和
        scrollView.contentSize = CGSize(width: pageWidth * numOfPages,
                                        height: pageHeight)
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.scrollsToTop = false
        
        //添加子页面
        for i in 0..<numOfPages{
            let d = i+1
            let myViewController = MyViewController(number:d)
            myViewController.view.frame = CGRect(x:pageWidth*i, y:0,
                                                 width:pageWidth, height:pageHeight)
            scrollView.addSubview(myViewController.view)
        }
        self.view.addSubview(scrollView)
        
        
    }

    
}
