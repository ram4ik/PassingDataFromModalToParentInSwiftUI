//
//  ContentView.swift
//  PassingDataFromModalToParentInSwiftUI
//
//  Created by ramil on 10.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isPressented: Bool = false
    @State private var message: String = ""
    
    var body: some View {
        VStack {
            Button("Open Modal") {
                self.isPressented.toggle()
            }.sheet(isPresented: self.$isPressented) {
                ChildView(isPressented: self.$isPressented, message: self.$message)
            }
            Text(self.message)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
