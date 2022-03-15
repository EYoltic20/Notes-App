//
//  AddNotes.swift
//  To_DoList
//
//  Created by Emilio Y Martinez on 15/03/22.
//

import SwiftUI

struct AddNotes: View {
    @Environment(\.presentationMode) var presentationMode
    @State var note_Text: String =  ""
    @EnvironmentObject var ListViewModel : ListViewModel
    var body: some View {
        TextField("ESCRIBE LA NOTA", text: $note_Text)
        Button(action: saveNoteButton,label:{
            Text("Agregar Nota")
        })
    }
    func saveNoteButton(){
        ListViewModel.addItem(title: note_Text)
        presentationMode.wrappedValue.dismiss()
    }
}


struct AddNotes_Previews: PreviewProvider {
    static var previews: some View {
        AddNotes()
    
    }
}
