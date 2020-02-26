//
//  ViewController.swift
//  GeekTime
//
//  Created by zxfei on 2020/2/25.
//  Copyright © 2020 zxfei. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = HomeViewController()
        homeVC.tabBarItem.image = R.image.home()
        homeVC.tabBarItem.selectedImage = R.image.home_selected()?.withRenderingMode(.alwaysOriginal)
        homeVC.tabBarItem.title = "首页"
        homeVC.tabBarItem.setTitleTextAttributes([.foregroundColor: UIColor.hexColor(0x333333)], for: .selected)
        let homeNav = UINavigationController(rootViewController: homeVC)
        self.addChild(homeNav)
        
        let mineVC = MineViewController()
        mineVC.tabBarItem.image = R.image.mine()
        mineVC.tabBarItem.selectedImage = R.image.mine_selected()?.withRenderingMode(.alwaysOriginal)
        mineVC.tabBarItem.title = "我的"
        mineVC.tabBarItem.setTitleTextAttributes([.foregroundColor: UIColor.hexColor(0x333333)], for: .selected)
        let mineNav = UINavigationController(rootViewController: mineVC)
        
        self.addChild(mineNav)
    }

    @objc func click() {
        let loginVC = LoginViewController()
        navigationController?.pushViewController(loginVC, animated: true)
    }
}

