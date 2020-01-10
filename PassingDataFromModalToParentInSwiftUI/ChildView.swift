//
//  ChildView.swift
//  PassingDataFromModalToParentInSwiftUI
//
//  Created by ramil on 10.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ChildView: View {
    @Binding var isPressented: Bool
    @Binding var message: String
    
    var body: some View {
        VStack {
            TextField("Enter message here...", text: self.$message)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Close") {
                self.isPressented = false
            }
        }
    }
}

struct ChildView_Previews: PreviewProvider {
    static var previews: some View {
        ChildView(isPressented: .constant(false), message: .constant(""))
    }
}
