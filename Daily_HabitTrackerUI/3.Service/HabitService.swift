//
//  HabitService.swift
//  Daily_HabitTrackerUI
//
//  Created by Richard Clarke on 17/08/2026.
//

import Foundation

protocol HabitService {
    func fetchHabits() async throws -> [Habit]
}


struct MockHabitService: HabitService {
    
    func fetchHabits() async throws -> [Habit] {
        [
            Habit(taskName: "Drink Water", symbol: "drop.fill", isCompleted: false, dateCompleted: nil),
            Habit(taskName: "Read 20 Minutes", symbol: "book.fill", isCompleted: false, dateCompleted: nil),
            Habit(taskName: "Exercise", symbol: "duffle.bag.fill", isCompleted: false, dateCompleted: nil),
            Habit(taskName: "Meditate", symbol: "apple.meditate", isCompleted: false, dateCompleted: nil),
            Habit(taskName: "Learn Swift", symbol: "swift", isCompleted: false, dateCompleted: nil)
        ]
    }
    
}
