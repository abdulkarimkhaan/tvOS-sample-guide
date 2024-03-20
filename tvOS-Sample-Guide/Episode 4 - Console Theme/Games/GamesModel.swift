//
//  GamesModel.swift
//  tvOS-Sample-PlayStation-Dashboard-Concept
//
//  Created by Abdul Karim Khan on 25/02/2024.
//

import Foundation

class GamesModel {
    
    func getGames() -> [GameObject] {
        var games: [GameObject] = [GameObject]()
        games.append(GameObject(uniqueID: 1, name: "A WAY OUT", image: "ic-game-1", slug: .WayOut))
        games.append(GameObject(uniqueID: 2, name: "FIFA 22", image: "ic-game-2", slug: .F22))
        games.append(GameObject(uniqueID: 3, name: "FARCRY V", image: "ic-game-3", slug: .FC5))
        games.append(GameObject(uniqueID: 4, name: "CALL OF DUTY MW", image: "ic-game-4", slug: .CODMW))
        games.append(GameObject(uniqueID: 5, name: "ASSASINS CREED VALHALLA", image: "ic-game-5", slug: .ACVH))
        games.append(GameObject(uniqueID: 6, name: "BATTLEFIELD V", image: "ic-game-6", slug: .BF5))
        games.append(GameObject(uniqueID: 7, name: "ALWA'S LEGACY", image: "ic-game-7", slug: .AL))
        games.append(GameObject(uniqueID: 8, name: "BATMAN ARKHAM CITY", image: "ic-game-8", slug: .BATAC))
        games.append(GameObject(uniqueID: 9, name: "CALL OF DUTY BLACKOPS", image: "ic-game-9", slug: .CODBO))
        games.append(GameObject(uniqueID: 10, name: "CRISIS II", image: "ic-game-10", slug: .C2))
        games.append(GameObject(uniqueID: 11, name: "CALL OF DUTY BLACK OPS III", image: "ic-game-11", slug: .CODBO3))
        return games
    }
    
}
