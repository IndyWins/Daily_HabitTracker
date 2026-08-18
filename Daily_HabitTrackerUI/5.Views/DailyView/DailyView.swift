//
//  DailyView.swift
//  Daily_HabitTrackerUI
//
//  Created by Richard Clarke on 16/08/2026.
//

import SwiftUI

struct DailyView: View {
    
    
    // Imports All Data from DailyViewModel
    @StateObject private var vm = HabitViewModel(service: MockHabitService())
    
    var body: some View {
        
        NavigationStack {
            VStack {
                
                // TITLE & WELCOME
                
                Text("Daily")
                
                Text("Good Morning, \(vm.username) 👋🏼")
                
                DailyProgressCard(vm:vm)
                
                DailyTaskListTable(vm:vm)
                
                NavigationLink {
                    ProgressView()
                } label: {
                    HStack {
                        Text("View Progress")
                        
                    }
                }
                .modifier(CustomGreenButton())
                
            }
            .padding()
        }
        .task {
            await vm.loadHabits()
        }
    }
}

#Preview {
    DailyView()
}
