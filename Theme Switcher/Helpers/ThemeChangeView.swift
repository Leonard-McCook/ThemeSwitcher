//
//  ThemeChangeView.swift
//  Theme Switcher
//
//  Created by Leonard McCook-Carr on 1/22/24.
//

import SwiftUI

struct ThemeChangeView: View {
    @Environment(\.colorScheme) private var scheme
    @AppStorage("user_theme") private var userTheme: Theme = .systemDefault
    var body: some View {
        VStack(spacing: 15) {
            
        }
    }
}

#Preview {
    ThemeChangeView()
}


/// Theme
enum Theme: String, CaseIterable {
    case systemDefault = "Default"
    case light = "Light"
    case dark = "Dark"
    
    func color(_ scheme: ColorScheme) -> Color {
        switch self {
        case .systemDefault:
            return scheme == .dark ? .moon : .sun
        case .light:
            return .sun
        case .dark:
            return .moon
        }
    }
}
