//
//  ContentView.swift
//  Xcode Demo
//
//  Created by Student on 2026-02-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                Image("CuteDog")
                    .imageScale(.small)
                    
                Text("It's a really cute dog!")
                Button("Pet the dog!"){
                    print("You pressed me yay!")
                }
                .buttonStyle(.borderedProminent)
            }
    }
}

#Preview {
    ContentView()
}
