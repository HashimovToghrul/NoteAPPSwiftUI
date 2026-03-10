//
//  CellView.swift
//  NoteApp
//
//  Created by Togrul Hashimov on 08.03.26.
//

import SwiftUI

struct CellView: View {
    @Binding var note1 : NoteModel
    var body : some View {
       
        HStack {
            VStack(alignment: .leading) {
                Text (note1.title)
                    .font(.headline)
                Text (note1.description)
                    .font(.subheadline)
            }
            Spacer()
            
            
            
            
        }
        .padding(.leading, 5)
    }
}

#Preview {
    CellView(note1: .constant(NoteModel(title: "Preview", description: "Preview note")))
}
