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
    
    private var MockHabits: [Habit] = [
        Habit(id: UUID(), taskName: "Drink Water", symbol: "drop.fill", isCompleted: false, dateCompleted: nil),
        Habit(id: UUID(), taskName: "Read 20 Minutes", symbol: "book.fill", isCompleted: false, dateCompleted: nil),
        Habit(id: UUID(), taskName: "Exercise", symbol: "duffle.bag.fill", isCompleted: false, dateCompleted: nil),
        Habit(id: UUID(), taskName: "Meditate", symbol: "apple.meditate", isCompleted: false, dateCompleted: nil),
        Habit(id: UUID(), taskName: "Learn Swift", symbol: "swift", isCompleted: false, dateCompleted: nil),
        Habit(id: UUID(), taskName: "Take The Bins Out", symbol: "trash.fill", isCompleted: true, dateCompleted: .now),
        Habit(id: UUID(), taskName: "Homework", symbol: "text.book.closed.fill", isCompleted: true, dateCompleted: .now)
    ]
    
    func fetchHabits() async throws -> [Habit] {
        return MockHabits
    }
    
    func toggleTask(_ task: Habit) async {
        guard let index = MockHabits.firstIndex(where: { $0.id == task.id } ) else { return }
        
        MockHabits[index].isCompleted.toggle()
        print("Service ToggleTask Function Triggered")
    }
}
