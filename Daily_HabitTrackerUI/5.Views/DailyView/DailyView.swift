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
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Daily")
                            .modifier(TitleFontModifier())
                        
                        Text("Good Morning, \(vm.username) 👋🏼")
                    }
                    
                    Spacer()
                    
// ADD NEW HABIT BUTTON NAVIGATION
                    
                    NavigationLink {
                        // Add New Habit View
                    } label: {
                        Image(systemName: "plus")
                    }
                    .padding()
                    .fontWeight(.semibold)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                    
                }
                .padding()
                
                
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
