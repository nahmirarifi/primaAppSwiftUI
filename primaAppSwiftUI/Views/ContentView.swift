//
//  ContentView.swift
//  primaAppSwiftUI
//
//  Created by nahmir on 03/05/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showAddtaskView = false
    
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            TaskView()
            
            SmallAddButton()
                .padding()
                .onTapGesture{
                    showAddtaskView.toggle()
                }
                .sheet(isPresented: $showAddtaskView){
                    AddTaskView()
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(hue:0.086,saturation: 0.141,brightness: 0.972))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
