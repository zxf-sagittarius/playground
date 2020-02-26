//
//  BaseViewController.swift
//  GeekTime
//
//  Created by zxfei on 2020/2/25.
//  Copyright © 2020 zxfei. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //view.backgroundColor = UIColor.hexColor(0xf2f4f7)
        view.backgroundColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController?.navigationBar.barTintColor = .white
        edgesForExtendedLayout = UIRectEdge(rawValue: 0)
        
    }
}
