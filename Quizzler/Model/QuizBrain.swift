
import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "What is Juho's last name?", a: ["Lee", "Kim", "Leonardo"], correctAnswer: "Lee"),
        Question(q: "What is the capital city of Korea?", a: ["Paris", "Seoul", "Tokyo"], correctAnswer: "Seoul"),
        Question(q: "What is Juho's age", a: ["21", "22", "24"], correctAnswer: "24"),
        Question(q: "What college Juho went to?", a: ["Algonquin", "U Ottawa", "Seneca"], correctAnswer: "Algonquin"),
        Question(q: "What is the capital city of Canada?", a: ["Quebec", "Paris", "Ottawa"], correctAnswer: "Ottawa"),
        Question(q: "How would one say Hello in Korean?", a: ["주호", "대한민국", "안녕"], correctAnswer: "안녕"),
        Question(q: "Which of these colours is NOT featured in the logo for Apple?", a: ["Black", "White", "Red"], correctAnswer: "Red"),
        Question(q: "How many provinces are there in canada", a: ["9", "8", "10"], correctAnswer: "10"),
        Question(q: "30 x 12 + 10 = ?", a: ["360", "320", "370"], correctAnswer: "370"),
        Question(q: "Where is Kyiv located?", a: ["England", "Egypt", "Ukraine"], correctAnswer: "Ukraine")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

