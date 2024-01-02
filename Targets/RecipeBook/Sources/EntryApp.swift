import SwiftUI

@main
struct EntryApp: App {
    
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            HomeUI()
            
        }
    }
}

struct ContentApp: View {
    var body: some View {
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
        .accentColor(.black)
    }
}
