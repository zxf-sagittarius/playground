//
//  ViewController.swift
//  swift_carthage
//
//  Created by zxfei on 2020/2/24.
//  Copyright © 2020 zxfei. All rights reserved.
//

import UIKit
import SnapKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let v = UIView()
        v.backgroundColor = .blue
        view.addSubview(v)
        
        v.snp.makeConstraints { (make) in
            make.edges.equalToSuperview().inset(20)
        }
        
    }


}

