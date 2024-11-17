//
//  EpisodesModel.swift
//  TestProject
//
//  Created by Владимир Рогов on 16.11.2024.
//

import Foundation
import Combine



@Observable
class EpisodesModel {
    
    var episodes: [Episodes] = []
    var Subscriptions = Set<AnyCancellable>()
    
    
    func fetchEpisodes() {
        
        guard let url = URL(string: "https://rickandmortyapi.com/api/episode") else {
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map{
                $0.data
            }
            .decode(type: EpisodesResponse.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error.localizedDescription)
                     
                case .finished:
                    print("Data Fatched")
                
                
                }
            } receiveValue: { decodedData in
                
                self.episodes = decodedData.results
                
            }
            .store(in: &Subscriptions)
    }
}
