//
//  ViewController.swift
//  2017_11_16 JSON Exercises using codable
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 Quark. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var myColors = [colors]()
    var pokemons: PokemonCard?
    var breeds: AnimalInfo!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadAnimalData()
        loadPokemonData()
        loadDataColors()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func loadAnimalData(){
        if let path = Bundle.main.path(forResource: "animalRaw", ofType: "json"){
            let myURl = URL(fileURLWithPath: path)
            if let data = try? Data(contentsOf: myURl){
                let myDecoder = JSONDecoder()
                do{
                    let animalInfo = try
                    myDecoder.decode(AnimalInfo.self, from: data)
                    self.breeds = animalInfo
                }
                catch{
                    print(error)
                }
            }
        }
//        for breed in breeds.message{
//            print(breed)
//        }
    }
    func loadPokemonData() {
        if let path = Bundle.main.path(forResource: "PokemonRaw", ofType: "json"){
            let myUrl = URL(fileURLWithPath: path)
            if let data = try? Data(contentsOf: myUrl){
                let myDecoder = JSONDecoder()
                do{
                    let pokemon = try myDecoder.decode(PokemonCard.self, from: data)
                    self.pokemons = pokemon
                }
                catch{
                    print(error)
                }
            }
        }
        if let allPokemons = pokemons?.cards {
        for pokemon in allPokemons {
            print(pokemon.name,pokemon.attacks ?? print("no value"),pokemon.types ?? print("no values"))
        }
        }
    }
    func loadDataColors() {
        if let path = Bundle.main.path(forResource: "ColorSchemeRaw", ofType: "json"){
            let myUrl = URL(fileURLWithPath: path)
            if let data = try? Data(contentsOf: myUrl){
                let myDecoder = JSONDecoder()
                do{
                    let myScheme = try
                        myDecoder.decode(ColorScheme.self, from: data)
                    self.myColors = myScheme.colors
                }
                catch{
                    print(error)
                }
            }
        }
        for color in myColors{
            print(color.name.value)
        }
    }



}

