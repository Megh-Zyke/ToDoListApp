//
//  ListViewModel.swift
//  ToDoList2.0
//
//  Created by user1 on 14/01/24.
//

import Foundation

class ListViewModel : ObservableObject {
    
    @Published var items : [ItemModel] = [
        ItemModel(title: "Welcome to your To Do List ! ", isComplete: true),
        ItemModel(title: "Click on the Add button to add new To Do items" , isComplete: true),
        ItemModel(title: "Click on the Edit button to edit your current To Do List" , isComplete: true)
        ] {
        didSet {
            saveItems()
        }
    }

    let itemsKey :String = "items_key"
    
    init() {
        getItems()
    }
    
    
    func deleteItem( indexSet : IndexSet) {
        items.remove(atOffsets: indexSet)
        
    }
    
    func moveItem( from :IndexSet , to :Int){
        items.move(fromOffsets: from, toOffset: to)
    }

    
    func getItems(){
        
        guard
            let data  = UserDefaults.standard.data(forKey: itemsKey)
                ,let _ = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        
    }
    
    func addItem(title : String){
        let newItem = ItemModel(title: title, isComplete: false)
        
        items.append(newItem)
    }
    
    
    func updateItem(item : ItemModel){
            
        if let index = items.firstIndex(where: { $0.id  == item.id }){
            items[index] = item.updateCompletion()
        }
    }
    
    
    func saveItems()  {
        if let encodeData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodeData , forKey: itemsKey)
        }
    }
}
