//
//  DailyViewModel.swift
//  Daily_HabitTrackerUI
//
//  Created by Richard Clarke on 16/08/2026.
//

import Combine
import SwiftUI


final class HabitViewModel: ObservableObject {
    
    private let service: MockHabitService

    @Published var habits: [Habit] = []
    @Published var dailyRecords: [DailyRecord] = []
    
    init(service: MockHabitService) {
        self.service = service
    }
    
    @Published var username: String = "Rich"
    @Published var isLoading: Bool = false


    
 // ============ FUNCTIONS ==============
    
    
    func loadHabits() async {
        try? habits = await service.fetchHabits()
    }
    
    func loadDailyRecords() async {
        try? dailyRecords = await service.fetchDailyRecords()
    }
    
    
    func toggleCompletion(task: Habit) async {
        
        await service.toggleTask(task)
        await loadHabits()
        
    }
   
    
// ============ COMPUTED PROPERTIES ==============
    
    // COUNTS TOTAL NUMBER OF TASKS
    var totalHabits: Int {
        guard habits.count > 0 else { return 0 }
        return habits.count
    }
    
    // COUNTS NUMBER OF TASKS COMPLETED
    var habitsCompleted: Int {
        guard totalHabits > 0 else { return 0 }
        var count = 0
        
        for habit in habits {
            if habit.isCompleted {
                count += 1
            }
        }
        return count
    }
    
    // Calculates percentage of number of tasks vs number of compelted tasks
    var progressValue: Double {
        guard totalHabits > 0 else { return 0 }
        return Double(habitsCompleted) / Double(totalHabits)
    }
}


