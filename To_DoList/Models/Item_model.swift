//
//  Item_model.swift
//  To_DoList
//
//  Created by Emilio Y Martinez on 15/03/22.
//

import Foundation
struct Item_model:Identifiable,Codable{//Identifiable to identify and codable to save the content
    var id : String = UUID().uuidString // Creates an UUID in format string
    let title : String
    let isCompleted : Bool
    
    func updateCompletition() ->Item_model{
        return Item_model(id : id , title: title, isCompleted: !isCompleted)
    }

}
