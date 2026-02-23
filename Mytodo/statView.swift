//
//  statView.swift
//  Mytodo
//
//  Created by Vikram Kumar on 23/02/26.
//

import SwiftUI

struct StatsView: View {
    
    var tasks: [Task]
    
    var body: some View {
        
        let completed = tasks.filter { $0.isCompleted }.count
        let total = tasks.count
        
        VStack {
            Text("Completed: \(completed)/\(total)")
            
            if total > 0 {
                ProgressView(
                    value: Double(completed),
                    total: Double(total)
                )
            }
        }
        .padding()
    }
}

