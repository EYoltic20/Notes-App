//
//  ContentView.swift
//  To_DoList
//
//  Created by Emilio Y Martinez on 15/03/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var listModel : ListViewModel
    var body: some View {
        ZStack{
        List{
            ForEach(listModel.items ){item in
                ListRowView(item:item)
                    .onTapGesture {
                    listModel.updateData(item: item)
                }
                
            }
        }
        .listStyle(PlainListStyle())
            
        }.navigationTitle("Notes ")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink ("Add",destination : AddNotes()))
            .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ContentView()
        }
    }
}
