//
//  AnimatedMeshGradient.swift
//  Cartly
//
//  Created by Student on 2026-03-27.
//

import SwiftUI

struct AnimatedMeshGradient: View {
    @State var appear = false
    @State var appear2 = false
    
    var body: some View {
        MeshGradient(width: 3, height: 3, points: [
            [0, 0], [0.5, 0], [1, 0],
            [0, 0.5], appear ? [0.5, 0.5] : [0.8, 0.2], [1, 0.5], [0, 1], [appear ? 0.5 : 2.0, 1.0], [1, 1]
        ], colors: [
            appear ? .black : .teal, .black, appear2 ? .black : .green, .blue, .blue, .blue, appear2 ? .green : .blue, .green, .green
        ])
    
        .onAppear {
            withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                appear.toggle()
            }
            withAnimation(.easeInOut(duration: 5).repeatForever(autoreverses: true)) {
                appear2.toggle()
            }
        }
    }
}

#Preview {
    AnimatedMeshGradient()
        .ignoresSafeArea()
}
