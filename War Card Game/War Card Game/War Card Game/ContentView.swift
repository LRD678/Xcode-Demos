//
//  ContentView.swift
//  War Card Game
//
//  Created by Student on 2026-02-27.
//

import SwiftUI

struct ContentView: View {
    
    var playerCard = "card13"
    var cpuCard = "card10"
    
    var playerScore = 0
    var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
            VStack() {
                Spacer()
                Image("logo")
                    .imageScale(.large)
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    print("pressed")
                } label: {
                    Image("button")
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom)
                        Text("\(playerScore)")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom)
                        Text("\(cpuScore)")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding()
        }

    }
}

#Preview {
    ContentView()
}
