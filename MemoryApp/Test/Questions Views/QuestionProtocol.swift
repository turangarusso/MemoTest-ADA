//
//  QuestionProtocol.swift
//  Memory
//

import SwiftUI

protocol Question: View {
    var questionSentence:String { get set }
    var answer1:String { get set }
    var answer2:String { get set }
    var answer3:String { get set }
    var answer4:String { get set }
}
