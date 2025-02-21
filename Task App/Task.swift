//
//  Task.swift
//  Task App
//
//  Created by Marius on 21/02/2025.
//

protocol Describable {
    func description() -> String
}

extension Task: Describable {
    func description() -> String {
        return "Task: \(title)"
    }
}

struct Task {
    let title: String
    let onTaskCreation: (() -> Void)?
    
    init(title: String, onTaskCreation: (() -> Void)? = nil) {
        self.title = title
        self.onTaskCreation = onTaskCreation
    }
}
