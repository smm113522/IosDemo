//
//  ViewController.swift
//  swift07ios
//
//  Created by shinaimeng on 2018/8/20.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate{
    
    @IBOutlet var wx:UIWebView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.wx?.delegate = self
        
        loadUrl("http://www.baidu.com")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
     在 UIWebView 加载指定 URL
     */
    func loadUrl(_ url:String)
    {
        let urlobj = URL(string:url)
        let request = URLRequest(url:urlobj!)
        wx!.loadRequest(request);
    }

}

