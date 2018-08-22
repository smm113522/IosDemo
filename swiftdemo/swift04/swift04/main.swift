//
//  main.swift
//  swift04
//
//  Created by shinaimeng on 2018/8/17.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import Foundation

// 字典 c++ map

var dis = ["name":"dd","age":"23"]

print(dis)

print(dis["name"])

for (key,value) in dis{
    print("\(key):\(value)")
}

var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]

print(someDict)

var arr = String();

for index in 0...10{
    arr.append("item \(index)   ")
}
print(arr)
