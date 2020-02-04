//
//  CircleImage.swift
//  FirstExperienceOnSwiftUI
//
//  Created by zxfei on 2020/2/4.
//  Copyright © 2020 zxfei. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("zxfei")
            .frame(width: 180, height: 180, alignment: .top)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
