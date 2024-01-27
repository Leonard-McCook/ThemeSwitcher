//
//  ContentView.swift
//  Theme Switcher
//
//  Created by Leonard McCook-Carr on 1/21/24.
//

import SwiftUI

struct ContentView: View {
    /// View Properties
    @State private var changeTheme: Bool = false
    var body: some View {
        NavigationStack {
            List {
                Section("Appearance") {
                    Button("Change Theme") {
                        changeTheme.toggle()
                    }
                }
            }
            .navigationTitle("Settings")
        }
        .sheet(isPresented: $changeTheme, content: {
            ThemeChangeView()
            /// Since Max Height is 410
                .presentationDetents([.height(410)])
                .presentationBackground(.clear)
        })
    }
}

#Preview {
    ContentView()
}
