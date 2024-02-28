//
//  ContentView.swift
//  tvOS-Sample-Guide
//
//  Created by Abdul Karim Khan on 27/02/2024.
//

import SwiftUI

struct UserInteraction: View {
    
    @State var buttonSelected = ""
    @State var showAlert = false

    var body: some View {
        VStack {
            Text("Button Pressed \(buttonSelected)")
                .font(.title)
                .bold()
                .padding(20)

            Button {
//                buttonSelected = "Login"
            } label: {
                Text("Login")
            }
            
            Button {
//                buttonSelected = "Register"
                showAlert = true
            } label: {
                Text("Register")
            }
            .alert("Alert Title!", isPresented: $showAlert) {
                TextField(text: $buttonSelected) {}
                Button("Submit") {
                    print("Submit")
                }
                Button("Skip") {
                    print("Skip")
                }
            } message: {
                Text("Enter channel name")
            }
            
            

        }
        .padding()
        
    }
}

#Preview {
    UserInteraction()
}
