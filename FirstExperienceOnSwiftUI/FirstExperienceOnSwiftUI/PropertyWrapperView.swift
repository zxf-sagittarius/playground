//
//  PropertyWrapperView.swift
//  FirstExperienceOnSwiftUI
//
//  Created by zxfei on 2020/2/17.
//  Copyright © 2020 zxfei. All rights reserved.
//

import SwiftUI


extension UserDefaults {
    public enum Keys {
        static let hadShownUserGuide = "hadShownUserGuide"
    }
    var hasShownUserGuide: Bool {
        set {
            set(newValue, forKey: Keys.hadShownUserGuide)
        }
        get {
            bool(forKey: Keys.hadShownUserGuide)
        }
    }
}


@propertyWrapper
struct UserDefaultsWrapper<T> {
    
    var key: String
    var defaultValue: T
    
    init(_ key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    var wrappedValue: T {
        get {
            return UserDefaults.standard.value(forKey: key) as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}

struct PropertyWrapperView: View {
    
    @UserDefaultsWrapper("UserDefaultsWrapper", defaultValue: false)
    static var hadShownUserGuide: Bool
    
    @State private var showText = PropertyWrapperView.hadShownUserGuide ? "已经展示" : "还未展示"
    
    var body: some View {

        Button(action: {
            if(!PropertyWrapperView.hadShownUserGuide) {
                PropertyWrapperView.hadShownUserGuide = true
                self.showText = "已经展示过"
            }
        }) {
            Text(self.showText)
                .font(.system(size: 14))
                .foregroundColor(.black).frame(width: 60, height: 60, alignment: .center)
            
        }
    }
}

struct PropertyWrapperView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrapperView()
    }
}
