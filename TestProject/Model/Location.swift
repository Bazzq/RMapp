//
//  Location.swift
//  TestProject
//
//  Created by Владимир Рогов on 16.11.2024.
//

import Foundation


struct LocationsResponse: Codable {
    
    let results: [Locations]
}

struct Locations: Codable, Identifiable {
    
    let id: Int
    let name: String
    let type: String
    let dimension: String
}

