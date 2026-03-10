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
        NoteModel(title: "Note 1", description: "Birinci qeyd"),
        NoteModel(title: "Note 2", description: "İkinci qeyd"),
        NoteModel(title: "Note 3", description: "Üçüncü qeyd")
    ]
    func addNote(title: String, description: String) {
        let newNote = NoteModel(title: title, description: description)
        noteArray = noteArray + [newNote]
    }
}
