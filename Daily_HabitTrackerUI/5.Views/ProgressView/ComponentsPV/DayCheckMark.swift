//
//  DayCheckMark.swift
//  Daily_HabitTrackerUI
//
//  Created by Richard Clarke on 18/08/2026.
//

import SwiftUI

struct DayCheckMark: View {

    var body: some View {
        
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
                
                Image(systemName:"checkmark.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.green)
            }
            
            VStack {
                Text("W")
                
                Image(systemName:"checkmark.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.green)
            }
            
            VStack {
                Text("T")
                
                Image(systemName:"checkmark.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.green)
            }
            
            VStack {
                Text("F")
                
                Image(systemName:"circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.gray)
            }
            
            VStack {
                Text("S")
                
                Image(systemName:"circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.gray)
            }
            
            VStack {
                Text("S")
                
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
        
    }
}

#Preview {
    DayCheckMark()
}
