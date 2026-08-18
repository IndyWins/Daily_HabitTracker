//
//  TaskModel.swift
//  Daily_HabitTrackerUI
//
//  Created by Richard Clarke on 16/08/2026.
//


import SwiftUI

// Place Holder Task - To be replaced with Swift Data Code, Firebase Code, or Other

class Habit: Codable, Identifiable {
    let id: UUID
    var taskName: String = ""
    var symbol: String = ""
    var isCompleted: Bool = false
    var dateCompleted: Date?
    
    init(id: UUID, taskName: String, symbol: String, isCompleted: Bool, dateCompleted: Date?) {
        self.id = id
        self.taskName = taskName
        self.symbol = symbol
        self.isCompleted = isCompleted
        self.dateCompleted = dateCompleted
    }
    
}
