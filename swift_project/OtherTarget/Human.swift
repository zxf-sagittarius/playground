//
//  Human.swift
//  OtherTarget
//
//  Created by zxfei on 2020/2/17.
//  Copyright © 2020 zxfei. All rights reserved.
//

import Foundation

public class Human {
    var name: String
    private var age: Int
    
    private var sex: HumanSex
    
    public init(name: String, age: Int) {
        self.age = age
        self.name = name
        self.sex = HumanSex()
    }
    
    private init(name: String, age: Int, sex: HumanSex) {
        self.age = age
        self.name = name
        self.sex = sex
    }
    
    // 内嵌类
    private class HumanSex {
        
    }
    
}

extension Human {
    func showInfo() {
        print("name:\(name),age:\(age)")
    }
}







public struct Item {
    
}


//fileprivate class Teacher: Human {
//
//    var salary: Int
//    override init(name: String, age: Int) {
//        self.salary = 5000
//        super.init(name: name, age: age)
//    }
//}
