//
//  AddView.swift
//  ToDoList2.0
//
//  Created by user1 on 14/01/24.
//

import SwiftUI



struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @EnvironmentObject var listViewModel : ListViewModel
    
    @State var textFieldText : String = ""
    
    @State var alertTitle : String = ""
    @State var showAlert : Bool = false
    var body: some View {
        ScrollView{
            VStack {
                TextField("Add an item here " , text : $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.892, opacity: 0.748))
                .cornerRadius(10)
                
                Button(action: {
                    saveButtonPressed()
                }
                       , label: {
                    Text("Save").textCase(.uppercase)
                        .foregroundStyle(Color.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding()
                
                
        }
        .navigationTitle("Add an Item 🖊️")
        .alert(isPresented: $showAlert, content: getAlert)
        
    }
    
    func saveButtonPressed(){
        if textIsApp() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
        else {
            
        }
    }
    
    func textIsApp() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your New To Do Item must be atleast 3 characters long."
            showAlert.toggle()
            return false
        }
        return true
    }
    
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationView{
        AddView()
    }
    .environmentObject(ListViewModel())
}
