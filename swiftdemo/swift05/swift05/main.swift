//
//  main.swift
//  swift05
//
//  Created by shinaimeng on 2018/8/20.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import Foundation

func sayHello(name:String){
    print("hello \(name)")
}
sayHello(name: "shangdi")
print("Hello, World!")

func getNum() -> (Int,Int){
    return (2,3)
}
let (a,b) = getNum()
print(a)
print(getNum())


var fun = sayHello(name: "ddd")

//fun(name:"nihao")

var f = sayHello
f("dddw")










