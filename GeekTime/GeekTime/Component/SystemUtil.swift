//
//  SystemUtil.swift
//  GeekTime
//
//  Created by zxfei on 2020/2/27.
//  Copyright © 2020 zxfei. All rights reserved.
//

import Foundation
import UIKit

class SystemUtil: NSObject {
    
    // 是否是刘海屏
    static func isFullScreen() -> Bool {
        
        if #available(iOS 11, *) {
            guard let w = UIApplication.shared.delegate?.window, let unwrapedWindow = w else {
                return false
            }
            
            if unwrapedWindow.safeAreaInsets.left > 0 ||
                unwrapedWindow.safeAreaInsets.bottom > 0 ||
                unwrapedWindow.safeAreaInsets.top > 0 {
                return true
            }
        }
        return false
    }
}
