//
//  ToDoList2_0App.swift
//  ToDoList2.0
//
//  Created by user1 on 14/01/24.
//

import SwiftUI

@main
struct ToDoList2_0App: App {
    
    @State var listViewModel : ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
