//
//  ListRowView.swift
//  To_DoList
//
//  Created by Emilio Y Martinez on 15/03/22.
//

import SwiftUI

struct ListRowView: View {
    let item : Item_model
    var body: some View {
        HStack{
            Image(systemName: !item.isCompleted ? "circle.dashed": "circle.dashed.inset.filled")
            Text(item.title)
        }
    }
}

struct ListRowView_Previews:
    PreviewProvider {
    static var itemS = Item_model(title:"Comer",isCompleted:false)
    
    static var previews: some View {
        ListRowView(item: itemS)
    }
}
