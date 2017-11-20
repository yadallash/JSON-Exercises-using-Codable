//
//  ColorSchemes.swift
//  2017_11_16 JSON Exercises using codable
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 Quark. All rights reserved.
//

import Foundation

struct ColorScheme:Codable {
    var mod: String?
    var colors:[colors]
}
struct colors:Codable {
    var name: nameWraper
    var hex: HexWraper
}
struct nameWraper:Codable {
    var value: String
}
struct HexWraper:Codable {
    var value: String
}

