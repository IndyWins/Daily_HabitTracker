//
//  DailyProgressCard.swift
//  Daily_HabitTrackerUI
//
//  Created by Richard Clarke on 18/08/2026.
//

import SwiftUI

struct DailyProgressCard: View {
    
    @ObservedObject var vm: HabitViewModel
    
    var body: some View {
        
        HStack {
            
            // TEXT
            VStack {
                
                Text("Todays Progress")
                
                Text("\(vm.habitsCompleted) / \(vm.totalHabits)")
                    .foregroundColor(.green)
                
                Text("habits completed")
            }
            .padding()
            
            Spacer()
            
            // PROGRESS CIRCLE
            VStack {
                
                ZStack {
                    Circle() // Underlay Progress Circle - always there
                        .stroke(Color.gray.opacity(0.2), lineWidth: 8)
                    
                    Circle() // Top Circle based on task percentage complete
                        .trim(from: 0.0, to: CGFloat(vm.progressValue))
                        .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                        .foregroundColor(.green)
                        .rotationEffect(Angle(degrees: -90))
                        .animation(.easeInOut, value: vm.progressValue)
                    
                    Text("\(Int(vm.progressValue * 100))%")
                        .font(.title)
                        .foregroundStyle(.primary)
                }
                .padding(.horizontal)
                
            }
            .padding()
        }
        .frame(maxWidth: .infinity)
        .background(Color.green.opacity(0.2))
        .cornerRadius(15)
        .padding(.vertical, 10)
    }
}

#Preview {
    let vm = HabitViewModel(service: MockHabitService())
    DailyProgressCard(vm:vm)
}
