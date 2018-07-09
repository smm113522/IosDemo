//
//  UIWebViewViewController.swift
//  fourDemo
//
//  Created by shinaimeng on 2018/7/9.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class UIWebViewViewController: UIViewController {
    
    lazy private var webview: UIWebView = {
        self.webview = UIWebView.init()
        self.webview = UIWebView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        
        return self.webview
    }()
    
    lazy private var progressView: UIProgressView = {
        self.progressView = UIProgressView.init(frame: CGRect(x: CGFloat(0), y: CGFloat(65), width: UIScreen.main.bounds.width, height: 2))
        self.progressView.tintColor = UIColor.green      // 进度条颜色
        self.progressView.trackTintColor = UIColor.white // 进度条背景色
        return self.progressView
    }()


    var html = "<h1>欢迎来到：<a href='http://hangge.com'>航歌</a></h1>";
//    var webview:UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UIWebViewViewController demo"
        self.view.backgroundColor = UIColor.white
       
//        本地网页加载
//        webview.loadHTMLString(html, baseURL: nil)
//        网络url 请求
        html = "http://www.baidu.com"
        webview.loadRequest(URLRequest.init(url: URL.init(string: html)!))

        self.view.addSubview(webview)
        // Do any additional setup after loading the view.
    }

    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
}
