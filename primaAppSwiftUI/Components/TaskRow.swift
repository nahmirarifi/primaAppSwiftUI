//
//  TaskRow.swift
//  primaAppSwiftUI
//
//  Created by nahmir on 03/05/23.
//

import SwiftUI

struct TaskRow: View {
    var task: String
    var completed: Bool
    
    
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: completed ? "checkmark.circle" : "circle")
            Text(task)
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: "Doo qualcosa", completed: true)
    }
}
