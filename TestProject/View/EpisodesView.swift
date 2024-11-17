//
//  ContentView2.swift
//  TestProject
//
//  Created by Владимир Рогов on 16.11.2024.
//

import SwiftUI



struct EpisodesView: View {
    
    var viewModel2 = EpisodesModel()
    
    var body: some View {
        VStack {
            List(viewModel2.episodes) { episodes in
                EpisodeView(episode: episodes)
            }
            .onAppear {
                viewModel2.fetchEpisodes()
            }
        }
    }
}

