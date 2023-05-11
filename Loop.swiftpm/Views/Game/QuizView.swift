import SwiftUI

struct QuizView: View {
    
    @EnvironmentObject var gameManager: GameManager
    
    var currentQuiz: Garbage.Emoji {
        gameManager.quizes[gameManager.progress].question
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 32) {
                Text(currentQuiz.symbol)
                    .font(.system(size: 100))
                Text(currentQuiz.description)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.bottom, 32)
                OptionButton()
            }
            .frame(maxHeight: .infinity, alignment: .center)
            
            ProgressBar(progress: gameManager.progress)
            
        }
    }
    
}
