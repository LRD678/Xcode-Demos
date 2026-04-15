//
//  HomeView.swift
//  Navigation
//
//  Created by Student on 2026-04-13.
//

import SwiftUI

struct HomeView: View {
    @Binding var username : String
    
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
            
            Text("Welcome to the app \(username)")
        }
        .padding()
    }
}

#Preview {
    @Previewable @State var previewUsername = "Preview User"
    HomeView(username : $previewUsername)
}
