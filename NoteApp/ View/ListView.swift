//
//  ListView.swift
//  NoteApp
//
//  Created by Togrul Hashimov on 08.03.26.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var vmL: NoteViewModel

    var body: some View {
        NavigationStack {
            List {
                ForEach($vmL.noteArray) { $note in
                    NavigationLink(destination: DetailsView(note2: $note)) {
                        CellView(note1: $note)
                    }
                       
                     
                }
                .onDelete { IndexSet in
                    vmL.deleteNote(index: IndexSet)
                }
            }
            .listStyle(.plain)
            .navigationTitle("List")
        }
        
    }
}

#Preview {
    ListView()
        .environmentObject(NoteViewModel())
}
