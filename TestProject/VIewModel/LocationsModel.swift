//
//  LocationsModel.swift
//  TestProject
//
//  Created by Владимир Рогов on 16.11.2024.
//

import Foundation
import Combine



@Observable
class LocationsModel {
    
    var locations: [Locations] = []
    var Subscriptions = Set<AnyCancellable>()
    
    
    func fetchLocations() {
        
        guard let url = URL(string: "https://rickandmortyapi.com/api/location") else {
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map{
                $0.data
            }
            .decode(type: LocationsResponse.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error.localizedDescription)
                     
                case .finished:
                    print("Data Fatched")
                
                
                }
            } receiveValue: { decodedData in
                
                self.locations = decodedData.results
                
            }
            .store(in: &Subscriptions)
    }
}

