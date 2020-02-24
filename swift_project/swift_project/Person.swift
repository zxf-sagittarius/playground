//
//  Person.swift
//  swift_project
//
//  Created by zxfei on 2020/2/24.
//  Copyright © 2020 zxfei. All rights reserved.
//

import Foundation

class Person: NSObject {
    @objc var name: String
    @objc var age: Int
    @objc init(name: String, age: Int) {
        self.name = name
        self.age = age
        super.init()
    }
}

extension Programmer {
    // 重新定义oc的indexOfString方法 规则（官方文档）
    func indexOfString(aString: String) -> Int? {
        let index = Int(__index(of: aString))
        if index == NSNotFound {
            return nil
        }
        return index
    }
}
