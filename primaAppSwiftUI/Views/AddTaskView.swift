//
//  AddTaskView.swift
//  primaAppSwiftUI
//
//  Created by nahmir on 03/05/23.
//

import SwiftUI

struct AddTaskView: View {
    @Environment(\.dismiss) var dismiss
    @State private var title: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Create a new task")
                .font(.title).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Enter your task here" , text: $title)
                .textFieldStyle(.roundedBorder)
            
            Button{
                print("ttttt")
                dismiss()
            } label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color(hue: 0.328, saturation: 0.796, brightness: 0.408))
                    .cornerRadius(30)
            }
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color(hue:0.086,saturation: 0.141,brightness: 0.972))
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
    }
}
