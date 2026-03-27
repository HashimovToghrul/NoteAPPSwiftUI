//
//  CellView.swift
//  NoteApp
//
//  Created by Togrul Hashimov on 08.03.26.
//

import SwiftUI

struct CellView: View {
    let note: NoteModel
    var body : some View {
       
        HStack {
            VStack(alignment: .leading) {
                Text(note.title)
                    .font(.headline)
                Text(note.description)
                    .font(.subheadline)
               
            }
            Spacer()
            
            
            
            
        }
        .padding(.leading, 5)
    }
}

#Preview {
    CellView(note: NoteModel(title: "Preview", description: "Preview note", url: "google.com"))
}
