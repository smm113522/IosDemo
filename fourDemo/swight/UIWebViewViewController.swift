//
//  UIWebViewViewController.swift
//  fourDemo
//
//  Created by shinaimeng on 2018/7/9.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UIWebViewViewController: UIViewController {

    let html = "<h1>欢迎来到：<a href='http://hangge.com'>航歌</a></h1>";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UIWebViewViewController demo"
        self.view.backgroundColor = UIColor.white
        
        let webview:UIWebView = UIWebView();
        
        webview.loadHTMLString(html, baseURL: nil)

        self.view.addSubview(webview)
        
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
