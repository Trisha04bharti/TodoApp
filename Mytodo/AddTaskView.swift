//
//  AddTaskView.swift
//  Mytodo
//
//  Created by Vikram Kumar on 22/02/26.
//

import SwiftUI

struct AddTaskView: View {
    
    @Binding var title: String
    var addAction: () -> Void
    
    var body: some View {
        HStack {
            TextField("Enter task...", text: $title)
                .textFieldStyle(.roundedBorder)
            
            Button("Add") {
                addAction()
            }
            .buttonStyle(.borderedProminent)
        }
    }
}
