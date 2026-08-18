//
//  DailyTaskListTable.swift
//  Daily_HabitTrackerUI
//
//  Created by Richard Clarke on 18/08/2026.
//

import SwiftUI

struct DailyTaskListTable: View {
    
    @ObservedObject var vm: HabitViewModel
    var body: some View {
        
        VStack(spacing: 10) {
            
            HStack {
                Text("Todays Habits")
                    .font(.headline)
                Spacer()
            }
            
            // SHOW LOADING SCREEN WHILST DATA LOADS
            if vm.isLoading {
                Spacer()
                ProgressView()
                    .tint(.green)
                Spacer()
                
                // SHOW ALL HABITS COMPLETED VIEW IF NO TASKS ARE REMAINING
            } else if vm.totalHabits == 0 {
                Spacer()
                ContentUnavailableView("All Habits Completed",
                                       systemImage: "checkmark.circle",
                                       description: Text("Enjoy your clear schedule!"))
                Spacer()
                
                // ELSE SHOW TASK LIST
            } else {
                
                List {
                    ForEach(vm.habits) { task in
                        ListButton(task: task,
                                   onToggleCompletion: {
                             vm.toggleCompletion(task: task)
                        }
                        )
                    }
                }
                .listStyle(.plain)
            }
            
        }
        .padding()
        .background(.background)
        .cornerRadius(15)
        .shadow(color: .primary.opacity(0.4), radius: 6)
    }
}

#Preview {
    let vm = HabitViewModel(service: MockHabitService())
    DailyTaskListTable(vm:vm)
}
