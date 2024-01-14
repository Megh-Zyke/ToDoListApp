//
//  ListRowView.swift
//  ToDoList2.0
//
//  Created by user1 on 14/01/24.
//

import SwiftUI

struct ListRowView: View {
    let item : ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isComplete ? "checkmark.circle" : "circle")
                .foregroundColor( item.isComplete ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .padding(.vertical , 7)
        
    }
}

#Preview {
    Group {
        ListRowView(item: ItemModel(title: "This is my item ", isComplete: false))
        ListRowView(item: ItemModel(title: "This is my item 2", isComplete: true))
    }
}
