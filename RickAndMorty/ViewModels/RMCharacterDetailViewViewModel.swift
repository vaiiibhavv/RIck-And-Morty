//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Vaibhav on 19/09/24.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
