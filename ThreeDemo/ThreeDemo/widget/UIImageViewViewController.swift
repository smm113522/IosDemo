//
//  UIImageViewViewController.swift
//  ThreeDemo
//
//  Created by shinaimeng on 2018/7/4.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UIImageViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "图像 UIImageVie"
        self.view.backgroundColor = UIColor.white
        
//        let imageView = UIImageView(image:UIImage(named:"image"))
//        imageView.frame = CGRect(x:10, y:30, width:300, height:150)
//        self.view.addSubview(imageView)

        //定义URL对象
        let url = URL(string: "http://hangge.com/blog/images/logo.png")
        //从网络获取数据流
        let data = try! Data(contentsOf: url!)
        //通过数据流初始化图片
        let newImage = UIImage(data: data)
        let imageView = UIImageView(image:newImage);
        self.view.addSubview(imageView)
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
