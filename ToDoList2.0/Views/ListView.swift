//
//  ListView.swift
//  ToDoList2.0
//
//  Created by user1 on 14/01/24.
//

import SwiftUI


struct ListView: View {
    
    @EnvironmentObject var listViewModel : ListViewModel
  
    
    var body: some View {
        List {
            ForEach(listViewModel.items) {
                item in
                ListRowView(item: item)
                    .onTapGesture {
                         
                            listViewModel.updateItem(item: item)
                        
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)

        }
        .listStyle(DefaultListStyle())
        .navigationTitle("To Do List 📝")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add" , destination: AddView())
            }
        }
    }
    
    
}



#Preview {
    NavigationView {

        ListView()
    }
    .environmentObject(ListViewModel())
}
