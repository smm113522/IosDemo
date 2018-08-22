//
//  ViewController.swift
//  swift12ios
//
//  Created by shinaimeng on 2018/8/21.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wx: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadUrl("http://baidu.com")
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
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

