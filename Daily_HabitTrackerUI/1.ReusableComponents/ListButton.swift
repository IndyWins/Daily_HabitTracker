//
//  ListButton.swift
//  Daily_HabitTrackerUI
//
//  Created by Richard Clarke on 16/08/2026.
//

import SwiftUI

struct ListButton: View {
    
    var task: Habit
    
    let onToggleCompletion: () async -> Void
    
    init(task: Habit, onToggleCompletion: @escaping () async -> Void) {
        self.task = task
        self.onToggleCompletion = onToggleCompletion
    }
    
    var body: some View {
        
        HStack {
            
            //LEFT SIDE: Image & Circle
            HStack {
                
                ZStack {
                    
                    Circle() // Underlay Progress Circle - always there
                        .fill(Color.green.opacity(0.2))
                        .frame(width:50, height: 50)

                    
                    Image(systemName: task.symbol)
                        .foregroundStyle(Color.green)
                }
            }
            
            Text(task.taskName)
                .padding(.horizontal)
            
            Spacer()
            
            HStack {
                // RIGHT SIDE: Tappable circle to toggle completion
                Button {
                    task.isCompleted.toggle()
                } label: {
                    Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(task.isCompleted ? .green : .gray.opacity(0.5))
                }
                .buttonStyle(.borderless)
                
            }
        }
    }
}

#Preview {
    let mockData: Habit = Habit(taskName: "Drink Water", symbol: "drop.fill", isCompleted: false, dateCompleted: nil)
    
    ListButton(task: mockData, onToggleCompletion: { })
}
