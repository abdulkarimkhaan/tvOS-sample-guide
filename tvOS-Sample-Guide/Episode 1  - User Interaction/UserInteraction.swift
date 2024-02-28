//
//  ContentView.swift
//  tvOS-Sample-Guide
//
//  Created by Abdul Karim Khan on 27/02/2024.
//

import SwiftUI

struct UserInteraction: View {
    
    @State var buttonSelected = ""

    var body: some View {
        VStack {
            Text("Button Pressed \(buttonSelected)")
                .font(.title)
                .bold()
                .padding(20)

            Button {
                buttonSelected = "Login"
            } label: {
                Text("Login")
            }
            
            Button {
                buttonSelected = "Register"
            } label: {
                Text("Register")
            }
        }
        .padding()
        
    }
}

#Preview {
    UserInteraction()
}
