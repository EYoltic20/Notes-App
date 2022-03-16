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
        ScrollView{
            VStack{
                TextField("ESCRIBE LA NOTA", text: $note_Text)
                    .padding(.horizontal)
                    .frame(height:55)
                    .cornerRadius(15)
                    .padding(.top,30)
                    
                Spacer()

                Button(action: saveNoteButton,label:{
                    Text("Agregar Nota")
                        
                        .frame(height:55)
                        .frame(maxWidth:.infinity)
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(11)
                })
                .padding(.top,30)
                
            }
            .padding(20)

        }
        .frame(maxWidth:.infinity,maxHeight: .infinity)
        .background(Color("BK"))
        
        .navigationTitle("Agregar Nota")

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
