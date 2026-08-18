//
//  Modifiers.swift
//  Daily_HabitTrackerUI
//
//  Created by Richard Clarke on 18/08/2026.
//

import SwiftUI


struct CustomGreenButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(maxWidth: .infinity)
            .fontWeight(.semibold)
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(50)
    }
}

struct TitleFontModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .fontWeight(.bold)
    }
}

