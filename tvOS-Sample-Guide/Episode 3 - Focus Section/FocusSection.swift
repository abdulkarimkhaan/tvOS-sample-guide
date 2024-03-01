//
//  FocusSection.swift
//  tvOS-Sample-Guide
//
//  Created by Abdul Karim Khan on 01/03/2024.
//

import SwiftUI

struct FocusSection: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    print("Sidemenu Pressed")
                } label: {
                    Text("Sidemenu")
                }
                Spacer()
            }
            .focusSection()
            Spacer()
            HStack {
                Spacer()
                Button {
                    print("Login Pressed")
                } label: {
                    Text("Login")
                }
                Spacer()
            }
            .focusSection()
            
            Spacer()
        }
    }
}

#Preview {
    FocusSection()
}
