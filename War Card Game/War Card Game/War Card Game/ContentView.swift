//
//  ContentView.swift
//  War Card Game
//
//  Created by Student on 2026-02-27.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card13"
    @State var cpuCard = "card10"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
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
                    dealCards()
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
    
    func dealCards() {
        var playerValue = Int.random(in: 2...14)
        var cpuValue = Int.random(in: 2...14)
        
        playerCard = "card" + "\(playerValue)"
        cpuCard = "card" + "\(cpuValue)"
        
        if playerValue > cpuValue {
            playerScore += 1
        }
        else if playerValue < cpuValue {
            cpuScore += 1
        }
        else {
            playerScore += 1
            cpuScore += 1
        }
    }
    
}

#Preview {
    ContentView()
}
