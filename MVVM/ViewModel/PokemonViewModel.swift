//
//  PokemonViewModel.swift
//  MVVM
//
//  Created by Alexis Serapio on 02/08/25.
//

import Foundation

struct PokemonViewModel{
    let name: String
    let image: String //La imagen es una cadena?
    
    init(pokemon: Pokemon){//El constructor asigna un modelo de pokemon
        self.name = pokemon.name
        //Transforma la propiedad imagen que originalmente es un Int a un String para que este listo para presentarse en la vista
        self.image = String(describing: pokemon.image)
    }
}
