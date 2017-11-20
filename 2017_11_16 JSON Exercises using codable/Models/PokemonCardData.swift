//
//  PokemonCardData.swift
//  2017_11_16 JSON Exercises using codable
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 Quark. All rights reserved.
//

import Foundation

struct PokemonCard:Codable {
    var cards: [CardWraper]
}

struct CardWraper: Codable {
    var name: String
    var types: [String]?
    var attacks: [AttackWraper]?
}

struct AttackWraper:Codable {
    var name: String?
    var text: String?
    var cost: [String]?
    
}
