//
//  RMService.swift
//  RickAndMorty
//
//  Created by Vaibhav on 17/09/24.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    
    /// Shared singelton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        guard let url = URL(string: "https://rickandmortyapi.com/api") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let data = data, let _ = response, error == nil else {
                return
            }
            
            do {
                let result = try JSONSerialization.jsonObject(with: data)
                print(result)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}
