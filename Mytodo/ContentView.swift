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
        NavigationView {
            VStack(spacing: 15) {
                
                // Add Task Section
                AddTaskView(
                    title: $newTaskTitle,
                    addAction: addTask
                )
                
                // Task List
                List {
                    ForEach($tasks) { $task in
                        TaskRowView(task: $task)
                    }
                    .onDelete(perform: deleteTask)
                }
                
                // Stats Section
                StatsView(tasks: tasks)
            }
            .navigationTitle("Task Manager")
            .padding(.horizontal)
        }
    }
    
    // MARK: - Functions
    
    private func addTask() {
        guard !newTaskTitle.isEmpty else { return }
        
        tasks.append(
            Task(title: newTaskTitle,
                 isCompleted: false,
                 isImportant: false)
        )
        
        newTaskTitle = ""
    }
    
    private func deleteTask(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
        
    
}

#Preview {
    ContentView()
}
