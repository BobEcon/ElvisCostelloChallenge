//
//  ContentView.swift
//  ElvisCostelloChallenge
//
//  Created by Robert Beachill on 26/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var message: String = ""
    @State private var imageName: String = ""
    var body: some View {
        
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.black)
                .frame(width: 300, height: 300)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    message = "Peace"
                    imageName = "peacesign"
                }
                
                Button("Love") {
                    message = "Love"
                    imageName = "heart"
                }
                
                Button("Understanding") {
                    message = "Understanding"
                    imageName = "lightbulb"
                }
        
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
