//
//  FormView.swift
//  NoteApp
//
//  Created by Togrul Hashimov on 08.03.26.
//

import SwiftUI

struct FormView: View {
    @EnvironmentObject var vmF: NoteViewModel
    @State private var title = ""
    @State private var description = ""

    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Section {
                        TextField("Başlıq daxil edin", text: $title)
                    } header: {
                        Text("Basliq")
                            
                    }
                    Section("Təsvir") {
                        TextField("Təsvir daxil edin", text: $description)
                    }
                }
                .frame(height: 250)
                
                Button {
                    
                    vmF.addNote(title: title, description: description)
                    title = ""
                    description = ""
                } label: {
                    Text("Əlavə et")
                        .font(.title2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(15)
                        .foregroundStyle(.white)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationTitle("Form")
        }
    }
}

#Preview {
    FormView()
        .environmentObject(NoteViewModel())
}
