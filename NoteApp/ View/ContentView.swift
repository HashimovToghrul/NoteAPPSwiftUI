//
//  ContentView.swift
//  NoteApp
//
//  Created by Togrul Hashimov on 08.03.26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                }
            FormView()
                .tabItem {
                    Image(systemName: "plus.circle")
                }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(NoteViewModel())
}
