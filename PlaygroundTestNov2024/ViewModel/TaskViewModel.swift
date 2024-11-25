//
//  TaskViewModel.swift
//  PlaygroundTestNov2024
//
//  Created by Jonathan Gusse on 25/11/2024.
//

import Foundation



class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []
    
    init() {
        // Simule la récupération des données
        self.tasks = [
            Task(id: UUID(), title: "Faire les courses", isCompleted: false),
            Task(id: UUID(), title: "Répondre aux e-mails", isCompleted: true)
        ]
    }
    
    // Méthode pour marquer une tâche comme terminée
    func toggleCompletion(for task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
        }
    }
}
