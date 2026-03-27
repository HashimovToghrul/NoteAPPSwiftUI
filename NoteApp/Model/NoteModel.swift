//
//  NoteModel.swift
//  NoteApp
//
//  Created by Togrul Hashimov on 08.03.26.
//

import Foundation

struct NoteModel: Identifiable {
    let id = UUID()
    var title : String
    var description : String
    var url : String
    
}
