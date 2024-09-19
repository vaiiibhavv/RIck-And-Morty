//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Vaibhav on 18/09/24.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // 'Alive', 'Dead' or 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    /// unknown is in back ticks because it can be a keyword in swift in some cases
    case `unknown` = "unknown"
    
    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}
