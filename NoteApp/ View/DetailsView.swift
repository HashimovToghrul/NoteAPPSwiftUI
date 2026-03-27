//
//  DetailsView.swift
//  NoteApp
//
//  Created by Togrul Hashimov on 08.03.26.
//

import SwiftUI

struct DetailsView: View {
    let note: NoteModel
    @State private var showWeb = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(note.title)
                .font(.title)
                .bold()

            Text(note.description)
                .font(.title3)
                .foregroundStyle(.black)
            Button {
               showWeb = true
            } label: {
                Text(note.url)
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
        .navigationDestination(isPresented: $showWeb) {
            WebView(url: URL(string:note.url.hasPrefix("http") ?
                             note.url  : "https://\(note.url)" )!)
            
        }
    }
}

#Preview {
    NavigationStack {
        DetailsView(note: NoteModel(title: "Note 1", description: "Birinci qeyd", url: "google.com"))
    }
}
