//
//  EpisodeView.swift
//  TestProject
//
//  Created by Владимир Рогов on 17.11.2024.
//

import SwiftUI


struct EpisodeView: View {
    
    var episode: Episodes
    
    var body: some View {
        HStack {
            VStack {
                Text("Name: \(episode.name)")
                    .bold()
                Text("Date: \(episode.air_date)")
                    .foregroundColor(.blue)
                
            }
        }
    }
}

