import SwiftUI

struct SidebarView: View {
    
    @Binding var selectedGarbage: Garbage?
    
    var body: some View {
        List(Garbage.getAll(), selection: $selectedGarbage) { garbage in
            NavigationLink(value: garbage) {
                GarbageRow(
                    garbageName: garbage.name,
                    garbageColor: garbage.color,
                    garbageSymbolName: garbage.symbolName
                )
            }
        }
        .listStyle(.automatic)
        .tint(.teal.opacity(0.3))
    }
    
}
