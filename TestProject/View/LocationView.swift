//
//  LocationView.swift
//  TestProject
//
//  Created by Владимир Рогов on 17.11.2024.
//

import SwiftUI

struct LocationView: View {
    
    var location: Locations
    
    var body: some View {
        HStack {
            VStack {
                Text("Name: \(location.name)")
                    .bold()
                Text("Type: \(location.type)")
                    .foregroundColor(.yellow)
                
            }
        }
    }
}
