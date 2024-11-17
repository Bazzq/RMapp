//
//  Character.swift
//  TestProject
//
//  Created by Владимир Рогов on 15.11.2024.
//

import Foundation



struct CharacterResponse: Codable {
    
    let results: [Character] 
}

struct Character: Codable, Identifiable {
    
    let id: Int
    let name: String
    let image: URL
    let status: String
    
}
