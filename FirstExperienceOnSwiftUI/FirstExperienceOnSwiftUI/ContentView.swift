//
//  ContentView.swift
//  FirstExperienceOnSwiftUI
//
//  Created by zxfei on 2020/2/3.
//  Copyright © 2020 zxfei. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView().edgesIgnoringSafeArea(.all).frame(width: UIScreen.main.bounds.width, height: 300, alignment: .top)
            CircleImage().offset(x: 0, y: -100).padding(.bottom, -100)
            VStack (alignment: .leading, spacing: 0){
                Text("圆明园")
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                    .font(.title)
                HStack (alignment: .bottom, spacing: 20){
                    Text("皇家园林").font(.subheadline)
                    Spacer()
                    Text("北京").font(.subheadline)
                }
            }.padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
