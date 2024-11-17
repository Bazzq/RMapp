//
//  TabView.swift
//  TestProject
//
//  Created by Владимир Рогов on 16.11.2024.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        TabView {
            CharactersView()
                .tabItem {
                    Image(systemName: "person.3")
                }
            
            LocationsView()
                .tabItem {
                    Image(systemName: "globe.central.south.asia")
                }
            
            EpisodesView()
                .tabItem {
                    Image(systemName: "play.house")
                }
        }
    }
}


#Preview {
    MainView()
}
