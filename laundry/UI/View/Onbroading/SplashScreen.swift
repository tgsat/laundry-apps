//
//  SplashScreen.swift
//  laundry
//
//  Created by Teguh Satrio on 9/2/22.
//  Copyright © 2022 tgsatt. All rights reserved.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    let login = WelcomeScreen()
    
    var body: some View {
        NavigationView {
        GeometryReader {geometry in
            ZStack {
                Image(MyImage.BackgroundWhite)
                .resizable()
                .aspectRatio(geometry.size, contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            NavigationLink(destination: self.login, isActive: self.$isActive,
                           label: {
                              EmptyView()
                           })
//            Logo()
            }.background(MyColor.primaryColors).edgesIgnoringSafeArea(.all)}.onAppear(perform: {self.gotoLoginScreen(time: 3)
            })
        }
    }
    func gotoLoginScreen(time: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + Double(time)) {
            self.isActive = true
        }
    }
}

struct Logo: View {
    var body: some View {
        VStack(alignment: .center){
            Image("")
            .resizable()
            .frame(width: 186, height: 186)
        }
    }
}

