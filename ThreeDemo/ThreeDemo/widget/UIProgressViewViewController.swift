//
//  UIProgressViewViewController.swift
//  ThreeDemo
//
//  Created by shinaimeng on 2018/7/4.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UIProgressViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "进度条 UIProgressView"
        self.view.backgroundColor = UIColor.white
        
        let progressView = UIProgressView(progressViewStyle: .default)
        progressView.center = self.view.center
        progressView.progress = 0.5 //默认进度50%
        self.view.addSubview(progressView)

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
