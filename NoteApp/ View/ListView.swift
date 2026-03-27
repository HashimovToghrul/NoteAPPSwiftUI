//
//  ListView.swift
//  NoteApp
//
//  Created by Togrul Hashimov on 08.03.26.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var vmL: NoteViewModel
    @State var searchText: String = ""
    
    
    var search: [NoteModel] {
        if searchText.isEmpty {
            return vmL.noteArray
        } else {
            return vmL.noteArray.filter {
                $0.title.localizedCaseInsensitiveContains(searchText) ||
                $0.description.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(search) { note in
                    NavigationLink(destination: DetailsView(note: note)) {
                        CellView(note: note)
                    }
                }
                .onDelete { IndexSet in
                    vmL.deleteNote(index: IndexSet)
                }
                }
            .listStyle(.plain)
            .navigationTitle("List")
            }
            
           
            .searchable(text: $searchText, prompt: "Axtar")
        }
      
        
    }


#Preview {
    ListView()
        .environmentObject(NoteViewModel())
}

