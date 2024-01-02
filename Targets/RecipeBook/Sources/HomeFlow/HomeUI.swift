import SwiftUI

struct HomeUI: View {
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.green.opacity(0.2).ignoresSafeArea()
            
                Text("Hello")
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack(spacing: 14) {
                        toolbarImage(name: "location.viewfinder")
                        toolbaraTitle
                        toolbarImage(name: "chevron.down")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Circle().frame(width: 42, height: 42)
                }
            }
        }
    }
}
// MARK: - Toolbar image
private extension HomeUI {
    func toolbarImage(name: String) -> some View {
        Image(systemName: name)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 21, height: 21)
        .foregroundColor(.secondary)
        .padding(.vertical, 2)
    }
}
// MARK: - Toolbar title
private extension HomeUI {
    var toolbaraTitle: some View {
        Text("Mohammed, Dhaka")
            .font(.caption)
            .foregroundColor(.primary)
    }
}
