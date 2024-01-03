import SwiftUI

final class ThemeManager: ObservableObject {
    @Published var currentThemeType: ThemeTypes
    @Published var themes: [ThemeTypes: Theme]
    
    var currentTheme: Theme {
        themes[currentThemeType]!
    }
    
    static var shared = ThemeManager()
    
    private init(themes: [ThemeTypes: Theme] = [:], currentThemeType: ThemeTypes = .dark) {
        self.themes = themes
        self.currentThemeType = currentThemeType
    }
}


