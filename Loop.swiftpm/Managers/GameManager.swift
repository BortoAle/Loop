import SwiftUI

class GameManager: ObservableObject {
    
    @Published var quizes: [(question: Garbage.Emoji, type: Garbage)] = []
    @Published var options: [Garbage] = []
    @Published var pressedOption: Garbage?
    @Published var progress: Int = 0
    @Published var points: Int = 0
    @Published var hasFinished: Bool = false
    @Published var isChangingQuestion: Bool = false
    @Published var buttonColors: [Garbage: Color] = [:]
    @Published var recordText: String = ""
    
    // Used for the circle animation at the end of the game
    @Published var circlePoints: Int = 0
    
    // Stores the user's highest points record
    @AppStorage("pointsRecord") var pointsRecord: Int = 0
    
    // Initialize the GameManager instance and setup the game
    init() {
        setupGame()
    }
    
    // Initialize the game by generating random quizzes and updating the options
    func setupGame() {
        generateRandomQuizes()
        updateOptions()
    }
    
    // Generate 10 random quizzes from the list of available emojis
    func generateRandomQuizes() {
        let allEmojis = Garbage.getAll().flatMap { garbage in
            return garbage.gameItems.map { (emoji: $0, parent: garbage) }
        }
        let selectedEmojis = allEmojis.shuffled().prefix(10).reversed()
        quizes = selectedEmojis.map({ ($0.emoji, $0.parent) })
    }
    
    // Update the answer options for the current question
    func updateOptions() {
        let parentGarbage = quizes[progress].type
        let otherGarbage = Garbage.getAll().filter { $0.id != parentGarbage.id }
        let randomGarbage = otherGarbage.shuffled().prefix(3) + [parentGarbage]
        options = randomGarbage.shuffled()
    }
    
    // Check if the selected option is the correct answer for the current question
    func checkEquality(selectedOption: Garbage) {
        let isCorrect = selectedOption.id == quizes[progress].type.id
        updateButtonColors(selectedOption: selectedOption, isCorrect: isCorrect)
        
        // Increment the points if the selected option is correct
        if isCorrect {
            points += 1
        }
        
        // Change the state to indicate that the question is changing
        isChangingQuestion = true
        showAnswerAndWait(selectedOption: selectedOption)
    }
    
    // Update button colors based on the correctness of the selected option
    func updateButtonColors(selectedOption: Garbage, isCorrect: Bool) {
        buttonColors[selectedOption] = isCorrect ? .green : .red
        buttonColors[quizes[progress].type] = .green
    }
    
    // Show the correct answer, wait for a short duration, and proceed to the next question
    func showAnswerAndWait(selectedOption: Garbage) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [self] in
            resetButtonColors(selectedOption: selectedOption)
            updateStatus()
            if !hasFinished {
                updateOptions()
            }
        }
    }
    
    // Reset button colors back to default after showing the correct answer
    func resetButtonColors(selectedOption: Garbage) {
        buttonColors[selectedOption] = Color(uiColor: .secondarySystemBackground)
        buttonColors[quizes[progress].type] = Color(uiColor: .secondarySystemBackground)
    }
    
    // Update the game status or terminate it
    func updateStatus() {
        if progress < quizes.count - 1 {
            progress += 1
        } else {
            updateRecord()
            hasFinished = true
        }
        isChangingQuestion = false
    }
    
    // Update points record and generate an appropriate feedback message
    func updateRecord() {
        if points > pointsRecord {
            pointsRecord = points
            recordText = "You've achieved a new personal best score!🥇"
        } else if points < pointsRecord {
            recordText = "Keep practicing to beat your record of \(pointsRecord) points!🥉"
        } else {
            recordText = "You've matched your personal best score of \(pointsRecord) points!🥈"
        }
    }
    
    // Reset points record to 0
    func resetRecord() {
        pointsRecord = 0
    }
    
    // Reset the game state to play again
    func resetGame() {
        progress = 0
        points = 0
        circlePoints = 0
        hasFinished = false
        setupGame()
    }
    
    // Provide a feedback message based on the user's performance in the game
    func feedbackMessage() -> String {
        switch points {
        case 9...10:
            return "Excellent work! You're a recycling expert."
        case 7...8:
            return "Good job! But there's still room for improvement."
        case 4...6:
            return "Not bad, but there's potential to do better."
        default:
            return "You can do much better!"
        }
    }
    
}
