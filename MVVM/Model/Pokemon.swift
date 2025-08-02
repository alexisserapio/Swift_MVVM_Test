//
//  Pokemon.swift
//  MVC
//
//

import Foundation

struct Pokemon {
    let image : Int
    let name : String
    
    init(imageId : Int, name: String) {
        self.image = imageId
        self.name = name
    }
}
