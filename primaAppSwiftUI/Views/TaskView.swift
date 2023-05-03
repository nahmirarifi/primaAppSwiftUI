//
//  TaskView.swift
//  primaAppSwiftUI
//
//  Created by nahmir on 03/05/23.
//

import SwiftUI

struct TaskView: View {
    var body: some View {
        VStack{
            Text("My tasks")
                .font(.title).bold()
                .padding()
                .frame(maxWidth: .infinity,alignment: .leading)
            
        }.frame(maxWidth:.infinity, maxHeight:.infinity)
            .background(Color(hue:0.086,saturation: 0.141,brightness: 0.972))
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
