//
//  ViewController.swift
//  swift13ios
//
//  Created by shinaimeng on 2018/8/22.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
//    直接连线就行了
    @IBAction func StoryOnclicked(_ sender: Any) {
        
    }
    
    @IBAction func XibOnclcked(_ sender: Any) {
        let xi = XibViewController()
        
        self.present(xi, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

