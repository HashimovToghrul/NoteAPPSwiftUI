//
//  NoteViewModel.swift
//  NoteApp
//
//  Created by Togrul Hashimov on 08.03.26.
//


import SwiftUI
import Combine

class NoteViewModel: ObservableObject {
    @Published var noteArray: [NoteModel] = [
        NoteModel(title: "Note 1", description: "Birinci qeyd", url: "https://tr.wikipedia.org/wiki/%C4%B0OS"),
        NoteModel(title: "Note 2", description: "İkinci qeyd", url: "https://en.wikipedia.org/wiki/App"),
        NoteModel(title: "Note 3", description: "Üçüncü qeyd", url: "https://en.wikipedia.org/wiki/Mobile_app" )
    ]
    func addNote(title: String, description: String, url: String) {
        let newNote = NoteModel(title: title, description: description, url: url)
       // noteArray = noteArray + [newNote]
        noteArray.append(newNote)
    }
    
   
    func deleteNote(index: IndexSet) {
        noteArray.remove(atOffsets: index)
    }
}
