//
//  Episod.swift
//  TestProject
//
//  Created by Владимир Рогов on 16.11.2024.
//


import Foundation


struct EpisodesResponse: Codable {
    
    let results: [Episodes]
}

struct Episodes: Codable, Identifiable {
    
    let id: Int
    let name: String
    let air_date: String
}
