//
//  ItemModel.swift
//  ToDoList2.0
//
//  Created by user1 on 14/01/24.
//

import Foundation

struct ItemModel: Identifiable {
    var id: String = UUID().uuidString
    let title: String
    let isComplete: Bool
    
    init(id: String = UUID().uuidString, title: String, isComplete: Bool) {
        self.id = id
        self.title = title
        self.isComplete = isComplete
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isComplete: !isComplete)
    }
}
