//
//  NoteAppApp.swift
//  NoteApp
//
//  Created by Togrul Hashimov on 08.03.26.
//

import SwiftUI

@main
struct NoteAppApp: App {
    @StateObject private var vm = NoteViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}
