//
//  NetworkingService.swift
//  TestProject
//
//  Created by Владимир Рогов on 15.11.2024.
//

import Foundation
import Combine



@Observable
class CharactersModel {
    
    var characters: [Character] = []
    var Subscriptions = Set<AnyCancellable>()
    
    
    func fetchCharacters() {
        
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map{
                $0.data
            }
            .decode(type: CharacterResponse.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error.localizedDescription)
                     
                case .finished:
                    print("Data Fatched")
                
                
                }
            } receiveValue: { decodedData in
                
                self.characters = decodedData.results
                
            }
            .store(in: &Subscriptions)
    }
}
