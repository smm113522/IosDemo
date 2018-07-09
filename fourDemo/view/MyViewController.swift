//
//  MyViewController.swift
//  fourDemo
//
//  Created by shinaimeng on 2018/7/6.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    var number:Int!
    let colorMap=[
        1:UIColor.black,
        2:UIColor.orange,
        3:UIColor.blue
    ]
    
    init(number initNumber:Int){
        self.number = initNumber
        super.init(nibName:nil, bundle:nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad(){
        let numberLabel = UILabel(frame:CGRect(x:130, y:50, width:50, height:30))
        numberLabel.text = "第\(number!)页"
        numberLabel.textColor = UIColor.white
        self.view.addSubview(numberLabel)
        self.view.backgroundColor = colorMap[number]
    }

}
