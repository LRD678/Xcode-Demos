//
//  ContentView.swift
//  Cartly
//
//  Created by Student on 2026-03-27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            // Gradient from green to blue and top to bottom
            //LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .top, endPoint: .bottom)
            // Full fill
                //.ignoresSafeArea()
            AnimatedMeshGradient()
                .ignoresSafeArea()
            
            VStack {
                Image(systemName: "cart.fill")
                    .font(.system(size: 100))
                    .foregroundStyle(Color(.icon))
                
                Text("Cartly")
                    .font(.system(size: 80))
                    .bold()
                    .foregroundStyle(Color.white)
                
                Text("Shop better.")
                    .font(.system(size: 30))
                    .foregroundStyle(Color.white)
                    
            }
        }
    }
}

#Preview {
    ContentView()
}
