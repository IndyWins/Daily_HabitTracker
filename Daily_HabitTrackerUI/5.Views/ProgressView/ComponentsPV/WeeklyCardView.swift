//
//  WeeklyCardView.swift
//  Daily_HabitTrackerUI
//
//  Created by Richard Clarke on 18/08/2026.
//

import SwiftUI

struct WeeklyCardView: View {
    
    
    // Placeholder Data
    
    let weeklyCompletedHabits: Int = 23
    let completionRate: Int = 82
    let dayStreak: Int = 4
    
    var body: some View {
       
        HStack {
            
            // Weekly Completions
            VStack {
                Text("\(weeklyCompletedHabits)")
                    .modifier(LargeNumberFontModifier())
                
                Text("Habits Compelted")
                    .multilineTextAlignment(.center)
            }
            .padding()
            
            Divider()
            
            // Completion Rate
            VStack {
                Text("\(completionRate)%")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.green)
                
                Text("Completion Rate")
                    .multilineTextAlignment(.center)
            }
            .padding()
            
            Divider()
            
            // DayStreak
            VStack {
                Text("\(dayStreak)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.green)
                
                Text("Day Streak")
                    .multilineTextAlignment(.center)
            }
            .padding()
            
        }
        .frame(maxWidth: .infinity, maxHeight: 200)
        .background(.background)
        .cornerRadius(15)
        .shadow(color: .primary.opacity(0.4), radius: 6)
        
    }

    
}

#Preview {
    WeeklyCardView()
}
