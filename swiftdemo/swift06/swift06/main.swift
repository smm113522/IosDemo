//
//  main.swift
//  swift06
//
//  Created by shinaimeng on 2018/8/20.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import Foundation

print("Hello, World!")

class Hi {
    
    func sayHi(){
        print("hello world")
    }
    
}

class Hello: Hi {
    
    override init() {
        print("init hello")
    }
    
    override func sayHi() {
        print("hello")
    }
}

var hi = Hi()

hi.sayHi()

var hello = Hello()

hello.sayHi()
