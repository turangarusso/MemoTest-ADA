//
//  FirstQuestion.swift
//  Memory
//

import SwiftUI

struct ThirdQuestion: Question {
    
    var questionSentence: String = "When you repeat you usually..."
    var answer1: String = "Browse the book or notes"
    var answer2: String = "Walking"
    var answer3: String = "Write what you repeat"
    var answer4: String = "Speak aloud"
    
    @State var resultSelector:Int
    @State var pressed = false
    
    var body: some View {
        
        VStack{
            Spacer()
            
            Text(questionSentence)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Spacer()
            
            HStack{
                Rectangle()
                    .frame(width: 40.0, height: 3.0)
                    .foregroundColor(Color("Cyan"))
                Rectangle()
                    .frame(width: 40.0, height: 3.0)
                    .foregroundColor(Color("Cyan"))
                Rectangle()
                    .frame(width: 40.0, height: 3.0)
                    .foregroundColor(Color("Cyan"))
                Rectangle()
                    .frame(width: 40.0, height: 3.0)
                    .foregroundColor(Color("Purple"))
            }
            .padding(.bottom)
            
            NavigationLink(destination: FourthQuestion(resultSelector: resultSelector), isActive: $pressed) {EmptyView()}
            
            VStack{
                
                Button {
                    resultSelector += 2
                    pressed.toggle()
                } label: {
                    //Answer 1
                    AnswerButton(textInBox: answer1)
                }
                .padding(.bottom)
                
                
                Button {
                    resultSelector += 4
                    pressed.toggle()
                } label: {
                    //Answer 2
                    AnswerButton(textInBox: answer2)
                }
                .padding(.bottom)
                
                
                Button {
                    resultSelector += 1
                    pressed.toggle()
                } label: {
                    //Answer 3
                    AnswerButton(textInBox: answer3)
                }
                .padding(.bottom)
                
                
                Button {
                    resultSelector += 3
                    pressed.toggle()
                } label: {
                    //Answer 4
                    AnswerButton(textInBox: answer4)
                }
            }
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
    }
}


struct ThirdQuestion_Previews: PreviewProvider {
    static var previews: some View {
        ThirdQuestion(resultSelector: 0)
    }
}
