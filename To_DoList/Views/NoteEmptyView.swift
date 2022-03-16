//
//  NoteEmptyView.swift
//  To_DoList
//
//  Created by Emilio Y Martinez on 16/03/22.
//

import SwiftUI

struct NoteEmptyView: View {
    var body: some View {
        VStack{
            Text("No Tienes notas todavia")
                .font(.title)
            Text("Comienza a escribir notas")
                .font(.title2)
            NavigationLink(destination: AddNotes(), label:  {
                Text("Comencemos")
                    .frame(maxWidth:.infinity)
                    .frame(height:55)
                    .foregroundColor(.white)
                    .background(Color.accentColor)
                    .cornerRadius(40)
                   
            })

            .padding()
        }
        .padding(.bottom,200)
        
    }
}

struct NoteEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        NoteEmptyView()
    }
}
