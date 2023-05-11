import SwiftUI

struct GameResultsView: View {
    
    @EnvironmentObject var gameManager: GameManager
    
    var body: some View {
        VStack {
            VStack(spacing: 32) {
                scoreCircle
                scoreMessage
                recordCard
            }
            .frame(maxHeight: .infinity, alignment: .center)
            
            playAgainButton   
        }
    }
    
    var scoreCircle: some View {
        VStack {
            Text("You scored")
                .font(.headline)
            Text("\(gameManager.points)/10")
                .font(.largeTitle)
                .bold()
        }
        .padding(44)
        .background {
            Circle()
                .trim(from: 0.0, to: CGFloat(Double(gameManager.circlePoints)/10))
                .rotation(.degrees(-90))
                .stroke(style: .init(lineWidth: 16, lineCap: .round))
                .foregroundColor(gameManager.points < 6 ? .red : .green)
        }
        .onAppear(perform: {
            gameManager.circlePoints = gameManager.points
        })
        .animation(.easeInOut(duration: 2), value: gameManager.circlePoints)
    }
    
    var scoreMessage: some View {
        Text(gameManager.feedbackMessage())
            .font(.headline)
            .multilineTextAlignment(.center)
    }
    
    @ViewBuilder
    var recordCard: some View {
        if !gameManager.recordText.isEmpty {
            RecordCard(text: gameManager.recordText, action: gameManager.resetRecord)
        }
    }
    
    var playAgainButton: some View {
        Button(action: gameManager.resetGame, label: {
            HStack {
                Image(systemName: "play.fill")
                Text("Play Again")
            }
            .padding()
        })
        .buttonStyle(.borderedProminent)
    }
}
