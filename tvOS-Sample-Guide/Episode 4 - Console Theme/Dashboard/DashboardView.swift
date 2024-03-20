//
//  DashboardView.swift
//  tvOS-Sample-PlayStation-Dashboard-Concept
//
//  Created by Abdul Karim Khan on 18/02/2024.
//

import SwiftUI

struct DashboardView: View {
    
    @State var backgroundImage: String?
    @State var launchGame = false
    
    var body: some View {
        ZStack {
            Image(backgroundImage ?? "ic-game-bg")
                .resizable()
                .opacity(0.5)

            NavigationView {
                VStack (alignment: .leading, spacing: 0) {
                    
                    //MARK: TopBar
                    HStack (spacing: 30) {
                        Image("ic-profile")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        VStack (alignment: .leading){
                            Text("abdulkarimkhaan")
                            HStack (spacing: 15) {
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.yellow)
                                Image(systemName: "plus.viewfinder")
                                    .foregroundStyle(.blue)
                            }
                        }
                        Spacer()
                        HStack (spacing: 15) {
                            Image(systemName: "wifi")
                            Text("11:35 PM")
                        }
                    }
                    
                    //MARK: MainView
                    TabView {
                        GamesMainPSView(launchGame: $launchGame)
                            .tabItem {
                                Label("Games", systemImage: "gamecontroller.fill")
                            }
                            .onAppear {
                                backgroundImage = "ic-game-bg"
                            }
                        MediaPSView()
                            .tabItem {
                                Label("Media", systemImage: "photo.artframe")
                            }
                            .onAppear {
                                backgroundImage = "ic-media-bg"
                            }
                        StorePSView()
                            .tabItem {
                                Label("Store", systemImage: "cart.fill")
                            }
                            .onAppear {
                                backgroundImage = "ic-ps-store"
                            }
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    DashboardView()
}
