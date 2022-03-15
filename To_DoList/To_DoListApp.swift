//
//  To_DoListApp.swift
//  To_DoList
//
//  Created by Emilio Y Martinez on 15/03/22.
//

import SwiftUI

@main
struct To_DoListApp: App {
    @StateObject var listViewModel : ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }.navigationViewStyle(StackNavigationViewStyle())
                .environmentObject(listViewModel)
        }
    }
}
