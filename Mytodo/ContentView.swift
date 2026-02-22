//
//  ContentView.swift
//  Mytodo
//
//  Created by Vikram Kumar on 21/02/26.
//

import SwiftUI

struct ContentView : View {
    
    @State private var tasks: [Task] = []
    @State private var newTaskTitle: String = ""
    
    
    var body: some View {
        NavigationStack{
            VStack(spacing : 20){
                Text("hello")
            }
        }
    }
}

#Preview {
    ContentView()
}
