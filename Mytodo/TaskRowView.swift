//
//  TaskRowView.swift
//  Mytodo
//
//  Created by Vikram Kumar on 22/02/26.


import SwiftUI

struct TaskRowView: View {
    
    @Binding var task: Task
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                
                // Toggle complete
                Button {
                    task.isCompleted.toggle()
                } label: {
                    Image(systemName:
                          task.isCompleted
                          ? "checkmark.circle.fill"
                          : "circle")
                }
                
                // Editable title
                TextField("Task", text: $task.title)
                    .strikethrough(task.isCompleted)
                
                Spacer()
                
                // Important toggle
                Button {
                    task.isImportant.toggle()
                } label: {
                    Image(systemName:
                          task.isImportant
                          ? "star.fill"
                          : "star")
                        .foregroundColor(.yellow)
                }
            }
        }
    }
}
