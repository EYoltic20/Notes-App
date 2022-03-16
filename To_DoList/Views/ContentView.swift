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
            
            if listModel.items.isEmpty{
                NoteEmptyView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
                
            }
            
            else{
                List{
                    ForEach(listModel.items ){item in
                        ListRowView(item:item)
                            .onTapGesture {
                                withAnimation(.default){
                                    listModel.updateData(item: item)
                                    
                                }
                                
                            }
                        
                    }.onDelete(perform: listModel.deleteItem)
                        .onMove(perform: listModel.moveItem(from:to:))
                }
                
                .padding(.horizontal,10)
                .listStyle(InsetGroupedListStyle())
                
            }
            
        }
        .padding(.top,20)
        .frame(maxWidth:.infinity,maxHeight: .infinity)
        .navigationTitle("Notes ")
        .navigationBarItems(leading: EditButton()
                            , trailing: NavigationLink ("Add",destination : AddNotes()))
        .background(Color("BK"))
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}
