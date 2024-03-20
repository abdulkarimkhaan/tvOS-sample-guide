//
//  GameStructAndEnum.swift
//  tvOS-Sample-PlayStation-Dashboard-Concept
//
//  Created by Abdul Karim Khan on 25/02/2024.
//

import Foundation

struct GameObject: Hashable {
    var uniqueID : Int
    var name: String
    var image: String
    var slug: GameEnum
}

enum GameEnum {
    case WayOut
    case F22
    case FC5
    case CODMW
    case ACVH
    case BF5
    case AL
    case BATAC
    case CODBO3
    case C2
    case CODBO
}

