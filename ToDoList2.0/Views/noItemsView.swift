//
//  noItemsView.swift
//  ToDoList2.0
//
//  Created by user1 on 14/01/24.
//

import SwiftUI

struct noItemsView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Text("There are no items")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Are you a productive person?")
                    .font(.title3)
                Text("Then click on the add button to add your taks for the day !")
                    .font(.title3)
                
                NavigationLink(destination: AddView()) {
                    Text("Add something 🥳")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
            }
            .padding(40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    NavigationView {
        noItemsView()
    }
}
