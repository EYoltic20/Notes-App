//
//  ListViewModel.swift
//  To_DoList
//
//  Created by Emilio Y Martinez on 15/03/22.
//

import Foundation
import SwiftUI

//CRUD Functions
/*
 Create
 Read
 Update
 Delete
 */
class ListViewModel:ObservableObject{
    @Published var items:[Item_model] = []{
    didSet{
        saveItems()
    }
    }
    init(){
        getItems()
    }
    
    let itemKey = "items_list"
    
    func getItems(){
        guard let data = UserDefaults.standard.data(forKey: itemKey),let saveItems = try? JSONDecoder().decode([Item_model].self, from: data)else{
            return
        }
        self.items = saveItems
    }
    func saveItems(){
        if let encodeData = try? JSONEncoder().encode(items){
            print(encodeData)
            UserDefaults.standard.set(encodeData, forKey: itemKey)
        }
    }
    func updateData(item:Item_model){
        if let index = items.firstIndex(where: {$0.id == item.id}){
            items[index] = item.updateCompletition()
        }
    }
    func addItem(title: String){
        let newItem = Item_model(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func moveItem(from:IndexSet,to:Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    func deleteItem(index:IndexSet){
        items.remove(atOffsets: index)
    }
}
