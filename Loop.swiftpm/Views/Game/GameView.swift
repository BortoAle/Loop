import SwiftUI

struct GameView: View {

    @Environment(\.dismiss) var dismiss
    
    @AppStorage("showInstructions") var showInstructions = true
   
    @StateObject var gameManager = GameManager()
    
    let gameInstructions: String = "Identify the object's category, earn points for correct answers, and aim for the highest score!"
    
    var body: some View {
        VStack {
            CloseButton { dismiss() }
            
            // If the game has finished, show the score, otherwise, show the game in progress
            if gameManager.hasFinished {
                GameResultsView()
            } else {
                QuizView()
            }
        }
        .environmentObject(gameManager)
        .padding(32)
        .alert(
            Text(gameInstructions), 
            isPresented: $showInstructions, 
            actions: { 
                Button(action: {
                    showInstructions = false
                }, label: {
                    Text("Got it!")
                })
                .buttonStyle(.borderedProminent)
            })
    }

}
