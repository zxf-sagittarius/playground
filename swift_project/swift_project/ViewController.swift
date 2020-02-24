//
//  ViewController.swift
//  swift_project
//
//  Created by zxfei on 2020/2/17.
//  Copyright © 2020 zxfei. All rights reserved.
//

import UIKit
import OtherTarget

// swift类 可以继承 oc类
// oc类 无法继承 swift类
class MyVC: OCViewController {
    
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Swift 页面"
        view.backgroundColor = .white
        let button = UIButton(frame: CGRect(x: 100, y: 200, width: 100, height: 40))
        button.setTitle("jump", for: .normal)
        button.setTitleColor(.black, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(didClickButton), for: .touchUpInside)
    }
    
    @objc func didClickButton() {
        let myVC = OCViewController()
        myVC.myTest()
        navigationController?.pushViewController(myVC, animated: true)
    }

}

