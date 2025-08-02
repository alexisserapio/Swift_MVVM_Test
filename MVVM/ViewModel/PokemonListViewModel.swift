//
//  PokemonListViewModel.swift
//  MVVM
//
//  Created by Alexis Serapio on 02/08/25.
//

import Foundation

class PokemonListViewModel{
    private let dataManager = PokemonDataManager()
    private var pokemonViewModels: [PokemonViewModel] = []
    
    func fetchPokemons(){
        dataManager.fetch()
        
        for pokemon in dataManager.allPokemons(){
            self.pokemonViewModels.append(PokemonViewModel(pokemon: pokemon))
        }
    }
    
    func numberOfPokemons()->Int{
        return pokemonViewModels.count
    }
    
    func getPokemon(at index: Int) -> PokemonViewModel{
        return pokemonViewModels[index]
    }
    
}
