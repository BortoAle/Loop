import SwiftUI

struct ContentView: View {
    
    @AppStorage("showWelcomeView") var showWelcomeView = true
    @State var selectedGarbage: Garbage?
    @State var showGameView: Bool = false
    
    var body: some View {
        NavigationSplitView {
            // Display the SidebarView
            SidebarView(selectedGarbage: $selectedGarbage)
                .ignoresSafeArea(.all, edges: .bottom)
                .navigationTitle("Loop")
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        playButton
                    }
                    ToolbarItem(placement: .bottomBar) {
                        HStack {
                            infoButton
                            Spacer()
                        }
                    }
                }
        } detail: {
            // Show GarbageView for the selected garbage or display instructions
            if let selectedGarbage {
                GarbageView(selectedGarbage: selectedGarbage)
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationTitle(selectedGarbage.name)
            } else {
                instructionsText
            }
        }
        // Display GameView as a sheet when 'Play' button is clicked
        .sheet(isPresented: $showGameView) {
            GameView()
                .interactiveDismissDisabled(true)
        }
        // Display AppInfoView as a sheet when 'Info' button is clicked
        .sheet(isPresented: $showWelcomeView, content: {
            AppInfoView()
        })
    }
    
    var playButton: some View {
        Button(action: { showGameView = true }, label: {
            HStack {
                Image(systemName: "play.fill")
                Text("Play")
            }
        })
        .buttonStyle(.borderedProminent)
    }
    
    var infoButton: some View {
        Button(action: {
            showWelcomeView = true
        }, label: {
            Image(systemName: "info.circle")
                .imageScale(.large)
        })
    }
    
    var instructionsText: some View {
        Text("Select a garbage type in the sidebar to learn,\nor tap the play button to start playing!")
            .multilineTextAlignment(.center)
            .font(.headline)
    }
}
