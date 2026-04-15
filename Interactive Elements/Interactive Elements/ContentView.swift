//
//  ContentView.swift
//  Interactive Elements
//
//  Created by Student on 2026-04-09.
//

import SwiftUI

var boxCornerRounding = 20.0

var boxHeight = 40.0
var boxWidth = 360.0

enum loopList : String, CaseIterable {
    case zero
    case one
    case two
}

struct ContentView: View {
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing : 15) {
                    ForEach(loopList.allCases, id: \.self) { item in
                        Text(item.rawValue)
                            .background(Color.blue)
                                
                .frame(width: boxWidth, height: boxHeight)
                    }
                    Button(action: {
                            addItem()
        
                        }, label : {
                            Text("BUTTON")
                        })
                        .foregroundStyle(.white)
                    
                }
                .padding()
            }
            .clipShape(RoundedRectangle(cornerRadius: boxCornerRounding)
            )
        }
        .background(
            RoundedRectangle(cornerRadius: boxCornerRounding)
                .fill(Color.green)
                .cornerRadius(45)
            )
    }
}

func addItem() {
    print("Add item")
    Text("B ADD")
            .foregroundStyle(.white)
            .font(.footnote)
            .frame(width: boxWidth, height: boxHeight)
            .background(.gray)
    }

#Preview {
    ContentView()
}
