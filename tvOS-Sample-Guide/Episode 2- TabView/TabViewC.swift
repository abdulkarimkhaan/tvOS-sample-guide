//
//  TabViewC.swift
//  tvOS-Sample-Guide
//
//  Created by Abdul Karim Khan on 01/03/2024.
//

import SwiftUI

struct TabViewC: View {
    
    @State var backgroundImage: String?
    
    var body: some View {
        ZStack {
            Image(backgroundImage ?? "ic-game-bg")
                .resizable()
                .opacity(0.5)

            TabView {
                GamesMainView()
                    .tabItem {
                        Label("Games", systemImage: "gamecontroller.fill")
                    }
                    .onAppear {
                        backgroundImage = "ic-game-bg"
                    }
                MediaView()
                    .tabItem {
                        Label("Media", systemImage: "photo.artframe")
                    }
                    .onAppear {
                        backgroundImage = "ic-media-bg"
                    }
                StoreView()
                    .tabItem {
                        Label("Store", systemImage: "cart.fill")
                    }
                    .onAppear {
                        backgroundImage = "ic-ps-store"
                    }
            }
        }
        .ignoresSafeArea()
    }
}

struct GamesMainView: View {
    var body: some View {
        VStack {
            
        }
    }
}

struct MediaView: View {
    var body: some View {
        VStack {
            
        }
    }
}

struct StoreView: View {
    var body: some View {
        VStack {
            
        }
    }
}
