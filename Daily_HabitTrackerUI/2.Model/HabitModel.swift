//
//  TaskModel.swift
//  Daily_HabitTrackerUI
//
//  Created by Richard Clarke on 16/08/2026.
//


import SwiftUI

// Place Holder Task - To be replaced with Swift Data Code, Firebase Code, or Other

class Habit: Codable, Identifiable {
    var taskName: String = ""
    var symbol: String = ""
    var isCompleted: Bool = false
    var dateCompleted: Date?
    
    init(taskName: String, symbol: String, isCompleted: Bool, dateCompleted: Date?) {
        self.taskName = taskName
        self.symbol = symbol
        self.isCompleted = isCompleted
        self.dateCompleted = dateCompleted
    }
    
}
