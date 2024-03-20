//
//  GameView.swift
//  tvOS-Sample-PlayStation-Dashboard-Concept
//
//  Created by Abdul Karim Khan on 25/02/2024.
//

import SwiftUI

struct GamesMainPSView: View {
    
    var model = GamesModel()
    
    @FocusState var focusedField: GameObject?
    @Binding var launchGame: Bool
    
    var body: some View {
            VStack {
                ScrollView (.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(model.getGames(), id: \.uniqueID) { game in
                            Button {
                                launchGame = true
                            } label: {
                                Image(game.image)
                                    .resizable()
                                    .frame(width: 270, height: 270)
                            }
                            .buttonStyle(.borderless)
                            .focused($focusedField, equals: game)
                        }
                    }
                }
                .frame(height: 320)
                
                //Game Description
                HStack {
                    VStack (alignment: .leading, spacing: 40) {
                        Text(focusedField?.name ?? "-")
                            .foregroundStyle(.white)
                            .bold()
                            .font(.title2)
                        HStack {
                            VStack (alignment: .leading, spacing: 8) {
                                Text("Time played")
                                Text("3h 1m")
                            }
                            VStack (alignment: .leading, spacing: 8) {
                                Text("Progress")
                                Text("10%")
                            }
                            VStack (alignment: .leading, spacing: 8) {
                                Text("Last Trophy")
                                HStack (spacing: 12) {
                                    Image(systemName: "trophy.fill")
                                        .frame(width: 40, height: 40)
                                        
                                    Text("Master Builder")
                                }
                            }
                        }
                    }
                    .padding(.leading, 40)
                    Spacer()
                }
                .opacity(focusedField != nil ? 1 : 0)
                Spacer()
            }
            .frame(height: 600)
            .onAppear {
                focusedField = model.getGames().first
                launchGame = false
            }
    }
}

