//
//  CharacterView.swift
//  TestProject
//
//  Created by Владимир Рогов on 17.11.2024.
//

import SwiftUI

struct CharacterView: View {
    
    var character: Character
    
    var body: some View {
        HStack {
            
            AsyncImage(url: character.image) { image in
                image
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                    .frame(width: 100, height: 100)
                
            } placeholder: {
                ProgressView()
            }
            VStack {
                Text("Name: \(character.name)")
                    .bold()
                Text("Status: \(character.status)")
                    .foregroundColor(.green)
                
            }
        }
    }
}
