//
//  Task.swift
//  Mytodo
//
//  Created by Vikram Kumar on 22/02/26.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var isImportant: Bool
}
