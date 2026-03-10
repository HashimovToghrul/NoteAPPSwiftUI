//
//  DetailsView.swift
//  NoteApp
//
//  Created by Togrul Hashimov on 08.03.26.
//

import SwiftUI

struct DetailsView: View {
    @Binding var note2: NoteModel

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(note2.title)
                .font(.title)
                .bold()

            Text(note2.description)
                .font(.body)
                .foregroundStyle(.secondary)

            Spacer()
        }
        .padding()
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        DetailsView(note2: .constant(NoteModel(title: "Note 1", description: "Birinci qeyd")))
    }
}
