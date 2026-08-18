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
            
            HStack {
                
                VStack {
                    Text("\(currentDayStreak) Day Streak")
                    
                HStack {
                        Text("\(currentDayStreak)")
                        Text("🔥")
                    }
                    
                    Text("days in a row!")
                    
                }
                
                Spacer()
                
                Image(systemName: "star.fill")
                
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.green.opacity(0.2))
            .cornerRadius(15)
            .shadow(color: .primary.opacity(0.4), radius: 6)

            
            HStack {
                
                VStack {
                    Text("M")
                    
                    Image(systemName:"checkmark.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.green)
                }
                
                VStack {
                    Text("T")
                    
                    Image(systemName:"circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .cornerRadius(15)
            
            
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
    }
}

#Preview {
    ProgressView()
}
