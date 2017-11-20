//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Iris Schlundt Bodien on 16-11-17.
//  Copyright © 2017 Iris Schlundt Bodien. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: GreekGodType
}

enum GreekGodType: String {
    case zeus = "Zeus", aphrodite = "Aphrodite", poseidon = "Poseidon", athena = "Athena"
    
    var definition: String {
        switch self {
        case .zeus:
            return "King of the Gods"
        case .aphrodite:
            return "Goddess of beauty"
        case .poseidon:
            return "God of water"
        case .athena:
            return "Goddess of wisdom"
        }
    }
}

var questions: [Question] = [
    Question(text: "Which food do you like the most?",
             type:.single,
                 answers: [
                    Answer(text: "Steak", type: .zeus),
                    Answer(text: "Fish", type: .poseidon),
                    Answer(text: "Carrots", type: .athena),
                    Answer(text: "Corn", type: .aphrodite)
                            ]),
    
    Question(text: "Which activities do you enjoy?",
            type: .multiple,
                answers: [
                    Answer(text: "Swimming", type: .poseidon),
                    Answer(text: "Sleeping", type: .athena),
                    Answer(text: "Cuddling", type: .aphrodite),
                    Answer(text: "Eating", type: .zeus)
                        ]),
    
    Question(text: "How much do you enjoy car rides?",
             type: .ranged,
                 answers: [
                    Answer(text: "I dislike them", type: .aphrodite),
                    Answer(text: "I get a little nervous",
                           type: .poseidon),
                    Answer(text: "I barely notice them",
                           type: .zeus),
                    Answer(text: "I love them", type: .athena)
        ])
]
