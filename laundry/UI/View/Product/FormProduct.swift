//
//  Product.swift
//  laundry
//
//  Created by Teguh Satrio on 9/2/22.
//  Copyright © 2022 tgsatt. All rights reserved.
//

import Foundation
import SwiftUI

struct ProductFormScreen: View {
    @State var title = ""
    @State var productName = ""
    @State var color = Color.black.opacity(0.7)
    
    var body: some View {
        VStack {
            Text("Product Name")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(MyColor.articleColors)
                .padding(.top, 35)
            
            TextField("...", text: self.$productName)
            .autocapitalization(.none)
            .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.productName != "" ? MyColor.primaryColors : self.color,lineWidth: 2))
            .padding(.top, 12)
            
        FormField()

        }.padding([.horizontal, .vertical], 16)
        
    }
}

struct FormField: View {
    @State var username: String = ""

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Product Name")) {
                    TextField("Username", text: $username)
                                    }
            }
//            .navigationBarTitle("Settings")
        }
    }}
