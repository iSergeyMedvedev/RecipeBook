import SwiftUI

@main
struct EntryApp: App {
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    @ObservedObject private var themeManager = ThemeManager.shared
    
    
    var body: some Scene {
        WindowGroup {
            ContentApp().environmentObject(themeManager)
        }
    }
}

struct ContentApp: View {
    @EnvironmentObject private var themeManager: ThemeManager
    
    var body: some View {
        
        Text("Hello theme!!!")
            .foregroundColor(.label.primary)
            .padding()
            .background(Color.background.primary)
        
        Button("Just change current theme") {
            themeManager.currentThemeType = .light
//            ThemeManager.shared.currentThemeType = .dark
        }
        
        TabView {
            Text("Home")
                .badge(2)
                .tabItem { Label("Home", systemImage: "house") }
            
            Text("2")
                .tabItem { Label("Home", systemImage: "house") }
            
            Text("Закладки")
                .tabItem { Label("Закладки", systemImage: "bookmark.fill") }
            
            Text("4")
                .tabItem { Label("Home", systemImage: "house") }
        }
        .accentColor(.label.secondary)
    }
}
