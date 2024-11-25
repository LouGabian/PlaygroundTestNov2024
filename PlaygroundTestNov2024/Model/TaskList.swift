//
//  TaskList.swift
//  PlaygroundTestNov2024
//
//  Created by Jonathan Gusse on 25/11/2024.
//

import Foundation

struct Task: Identifiable {
    let id: UUID
    let title: String
    var isCompleted: Bool
}
