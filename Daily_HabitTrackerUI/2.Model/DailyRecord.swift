//
//  DailyRecord.swift
//  Daily_HabitTrackerUI
//
//  Created by Richard Clarke on 21/08/2026.
//

import Foundation

class DailyRecord: Identifiable {
    let id = UUID()
    let date: Date
    let dayCompleted: Bool
    
    init(date: Date, dayCompleted: Bool) {
        self.date = date
        self.dayCompleted = dayCompleted
    }
    
}
