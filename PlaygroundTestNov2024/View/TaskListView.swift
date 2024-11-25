//
//  TaskListView.swift
//  PlaygroundTestNov2024
//
//  Created by Jonathan Gusse on 25/11/2024.
//

import SwiftUI

struct TaskListView: View {
    @StateObject private var viewModel = TaskViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.tasks) { task in
                HStack {
                    Text(task.title)
                    Spacer()
                    if task.isCompleted {
                        Image(systemName: "checkmark.circle.fill")
                    }
                }
                .onTapGesture {
                    viewModel.toggleCompletion(for: task)
                }
            }
            .navigationTitle("Tasks")
        }
    }
}

#Preview {
    TaskListView()
}
