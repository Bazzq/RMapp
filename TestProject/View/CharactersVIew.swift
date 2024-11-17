//
//  ContentView.swift
//  TestProject
//
//  Created by Владимир Рогов on 11.07.2024.
//

import SwiftUI



struct CharactersView: View {
    
    var viewModel = CharactersModel()
    
    var body: some View {
        VStack {
            List(viewModel.characters) { character in
                CharacterView(character: character)
            }
            .onAppear {
                viewModel.fetchCharacters()
            }
        }
    }
}




