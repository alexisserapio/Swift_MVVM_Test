//
//  PokemonViewController.swift
//  MVC
//


import UIKit

class PokemonViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = PokemonListViewModel()
    
    //let dataManager = PokemonDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        viewModel.fetchPokemons()
        //print("# de pokemones: ", dataManager.count())
        print("# de pokemones: \(viewModel.numberOfPokemons()) ")
    }
}

extension PokemonViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfPokemons()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PokemonCell
        
        //let pokemon = dataManager.getPokemon(at: indexPath.row)
        
        let pokemon = viewModel.getPokemon(at: indexPath.row)
        
        cell.pokemonLabel.text = pokemon.name
        //cell.pokemonImage.image = UIImage(named: String(describing: pokemon.image))
        cell.pokemonImage.image = UIImage(named:  pokemon.image)
        
        return cell
        
        
    }
}
