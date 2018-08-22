//
//  main.swift
//  swift09
//
//  Created by shinaimeng on 2018/8/21.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import Foundation

// swift 接口对使用

protocol People {
    func getName() -> String
}

class Man: People {

    func getName() -> String {
        return "zhangSan"
    }
    
}

var man = Man()
print("name is \(man.getName())")


// 命名空间的使用

class com{
    class xuanyuan {
        class Hello {
            func sayHello() {
                print("hello swift")
            }
        }
    }
}

var h = com.xuanyuan.Hello()
h.sayHello()
// 命名空间的第二次使用
class com1{
    class xuanyuan {
        
    }
}
extension com1.xuanyuan{
    class Hello {
        func sayHello() {
            print("hello swift1")
        }
    }
}

extension com1.xuanyuan{
    class Hi {
        func sayHi() {
            NSLog("ddd")
            print("hello hi")
        }
    }
}

var m = com1.xuanyuan.Hello()
m.sayHello()

var m1 = com1.xuanyuan.Hi()
m1.sayHi()

