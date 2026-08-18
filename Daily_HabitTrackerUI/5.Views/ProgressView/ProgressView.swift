//
//  ProgressView.swift
//  Daily_HabitTrackerUI
//
//  Created by Richard Clarke on 16/08/2026.
//

import SwiftUI

struct ProgressView: View {
    
    @State private var currentDayStreak: Int = 7
    
    var body: some View {
        
        NavigationStack {
            

            VStack(spacing: 20) {
                    
                HStack {
                    VStack(alignment: .leading) {
                        Text("Progress")
                            .modifier(TitleFontModifier())
                    }
                    
                    Spacer()
                    
                }
                
                HStack {
                    
                    VStack {
                        Text("\(currentDayStreak) Day Streak")
                            .fontWeight(.semibold)
                        
                        HStack {
                            Text("\(currentDayStreak)")
                                .font(.system(size: 50))
                                .fontWeight(.bold)
                                .foregroundStyle(Color.green)
                            Text("🔥")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundStyle(Color.green)
                        }
                        
                        Text("days in a row!")
                        
                    }
                    .padding()
                    
                    Spacer()
                    
                    Image(systemName: "star.fill")
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(.background)
                .cornerRadius(15)
                .shadow(color: .primary.opacity(0.4), radius: 6)

                
                DayCheckMark()
                
                // This Week Card
                
                WeeklyCardView()
                
                
                // RETURN TO DAILY VIEW NAVIGATION BUTTON
                
                NavigationLink {
                    DailyView()
                } label: {
                    HStack {
                        Text("Back To Today")
                    }
                }
                .modifier(CustomGreenButton())
                
            }
            .padding()
        }
    }
}

#Preview {
    ProgressView()
}
