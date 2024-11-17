//
//  ContentView2.swift
//  TestProject
//
//  Created by Владимир Рогов on 16.11.2024.
//

import SwiftUI



struct LocationsView: View {
    
    var viewModel1 = LocationsModel()
    
    var body: some View {
        VStack {
            List(viewModel1.locations) { location in
                LocationView(location: location)
            }
            .onAppear {
                viewModel1.fetchLocations()
            }
        }
    }
}



