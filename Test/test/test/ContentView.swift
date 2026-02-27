//
//  ContentView.swift
//  test
//
//  Created by Student on 2026-02-27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.teal)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20) {
                Image("niagarafalls")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(16)
                
                HStack{
                    Text("Niagara Falls")
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                        Text("(Reviews 361)")
                    }
                    .foregroundStyle(.orange)
                    .font(.caption)

                }
                Text("Come visit for an expierience of a lifetime")
                
                HStack{
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundStyle(.gray)
                .font(.caption)
            }
            .padding()
            .background() {
                Rectangle()
                    .foregroundStyle(.white)
                    .cornerRadius(16)
                    .shadow(radius: 15)
            }
            .padding()
        }

    }
}

#Preview {
    ContentView()
}
