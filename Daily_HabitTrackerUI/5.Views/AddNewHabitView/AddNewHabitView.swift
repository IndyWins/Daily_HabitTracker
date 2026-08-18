//
//  AddNewHabitView.swift
//  Daily_HabitTrackerUI
//
//  Created by Richard Clarke on 18/08/2026.
//

import SwiftUI

struct AddNewHabitView: View {
    
// PLACEHOLDER DATA
    
    @State private var habitName: String = ""
    @State private var habitSymbol: String = ""
    
    var body: some View {
        
        VStack {
            
// TITLE & WELCOME
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Add New Habit")
                        .modifier(TitleFontModifier())
                    
                    Text("Create a New Habit 👍🏻")
                }
                
                Spacer()
                
            }
// NEW HABIT DATA ENTRY
            
            
            
            
            
            
            
// SAVE & DISMISS BUTTON
            
            Button {
                // Save New Habit Call Here & CLose SheetView
            } label: {
                Text("Create New Habit")
            }
            .modifier(CustomGreenButton())
            
            
        }
        .padding()
    }
}

#Preview {
    AddNewHabitView()
}
