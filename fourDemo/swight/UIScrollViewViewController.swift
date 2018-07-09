//
//  UIScrollViewViewController.swift
//  fourDemo
//
//  Created by shinaimeng on 2018/7/6.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UIScrollViewViewController: UIViewController, UIScrollViewDelegate {

    var scrollView:UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UIScrollView demo"
        self.view.backgroundColor = UIColor.white
        
        scrollView = UIScrollView()
        //设置代理
        scrollView.delegate = self
        scrollView.frame = self.view.bounds
        
//        scrollView.contentSize = CGSize(width: pageWidth * numOfPages,
//                                        height: pageHeight)
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = true
        scrollView.scrollsToTop = false
        
//        let imageView = UIImageView(image:UIImage(named:"bigpic.jpg"))
//        scrollView.contentSize = imageView.bounds.size
        
        var label = UILabel(frame:CGRect(x:100, y:190, width:300, height:30))
        //        print(stepper.value)
        label.text = "测试1"
        
        scrollView.addSubview(label)

        var label1 = UILabel(frame:CGRect(x:100, y:790, width:300, height:30))
        //        print(stepper.value)
        label1.text = "测试2"
        
        scrollView.addSubview(label1)
        
        var label2 = UILabel(frame:CGRect(x:100, y:790, width:300, height:30))
        //        print(stepper.value)
        label2.text = "测试3"
        
        scrollView.addSubview(label2)


        self.view.addSubview(scrollView)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //视图滚动中一直触发
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("x:\(scrollView.contentOffset.x) y:\(scrollView.contentOffset.y)")
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
