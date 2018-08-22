//
//  WebviewViewController.swift
//  swift12ios
//
//  Created by shinaimeng on 2018/8/21.
//  Copyright © 2018 shinaimeng. All rights reserved.
//

import UIKit

class WebviewViewController: UIViewController {

    @IBOutlet weak var wx: UIWebView!
    @IBOutlet weak var go: UIButton!
    @IBOutlet weak var input: UITextField!
    
    @IBAction func btnOnclcked(_ sender: Any) {
        print("hello")
//        wx.loadRequest(URLRequest(url: URL(string: input.text!)!))
        
        wx.loadRequest(URLRequest.init(url: URL.init(string: input.text!)!))
//        input.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let html = "http://www.baidu.com"
        wx.loadRequest(URLRequest.init(url: URL.init(string: html)!))


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
