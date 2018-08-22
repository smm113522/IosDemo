//
//  ViewController.swift
//  swift08ios
//
//  Created by shinaimeng on 2018/8/21.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let h = Hello()
        h.satHello()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

