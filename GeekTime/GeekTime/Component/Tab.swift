//
//  Tab.swift
//  GeekTime
//
//  Created by zxfei on 2020/2/27.
//  Copyright © 2020 zxfei. All rights reserved.
//

import UIKit
import SnapKit

class Tab: UIView {

    var items: [String]
    var itemButtons: [UIButton]
    var selectedItemButton: UIButton!
    
    var indicatorView: UIView!
    
    var selectedColor: UIColor? {
        didSet {
            
        }
    }
    var normalColor: UIColor?
    
    
    init?(items: [String]) {
        if items.count == 0 {
            return nil
        }
        self.items = items
        itemButtons = []
        super.init(frame: .zero)
        self.setupViews()
    }
    
    func setupViews() {
        var lastView: UIView?
        for index in 0..<items.count {
            let button = UIButton(type: .custom)
            button.setTitle(items[index], for: .normal)
            button.setTitleColor(UIColor.hexColor(0x333333), for: .normal)
            button.setTitleColor(UIColor.hexColor(0xf8892e), for: .selected)
            self.addSubview(button)
            if index == 0 {
                selectedItemButton = button
            }
            
            button.snp.makeConstraints { (make) in
                if index == 0 {
                    make.left.equalToSuperview()
                } else {
                    make.left.equalTo(lastView!.snp.right)
                    make.width.equalTo(lastView!)
                }
                make.top.bottom.equalToSuperview()
                if index == items.count - 1 {
                    make.right.equalToSuperview()
                }
            }
            
            lastView = button
            button.addTarget(self, action: #selector(didClick(sender:)), for: .touchUpInside)
            itemButtons.append(button)
        }
        
        indicatorView = UIView()
        indicatorView.backgroundColor = UIColor.hexColor(0xf8892e)
        self.addSubview(indicatorView)
        indicatorView.snp.makeConstraints { (make) in
            make.centerX.equalTo(selectedItemButton)
            make.bottom.equalToSuperview()
            make.width.equalTo(80)
            make.height.equalTo(4)
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didClick(sender: UIButton) {
        
        guard sender != selectedItemButton else {
            return
        }
        selectedItemButton.isSelected = false
        sender.isSelected = true
        self.indicatorView.snp.updateConstraints { (make) in
            make.centerX.equalTo(self.selectedItemButton)
        }
        UIView.animate(withDuration: 0.25) {
            self.layoutIfNeeded()
        }
    }
    
    
    

}
