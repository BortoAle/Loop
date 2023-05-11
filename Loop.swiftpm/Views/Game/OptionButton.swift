import SwiftUI

struct OptionButton: View {
    
    @EnvironmentObject var gameManager: GameManager
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible(minimum: 100, maximum: 250)), GridItem(.flexible(minimum: 100, maximum: 250))], spacing: 16) {
            ForEach(gameManager.options) { option in
                Button(action: {
                    gameManager.checkEquality(selectedOption: option)
                    gameManager.pressedOption = option
                }, label: {
                    Text(option.name)
                        .font(.headline)
                        .foregroundColor(.primary)
                        .padding()
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        .background {
                            RoundedRectangle(cornerRadius: 14)
                                .foregroundColor(gameManager.buttonColors[option] ?? Color(uiColor: .secondarySystemBackground))
                        }
                })
                // Disable the option buttons if the question is changing
                .disabled(gameManager.isChangingQuestion)
            }
        }
    }
}
