//
//  FirstQuestion.swift
//  Memory
//


import SwiftUI

struct SecondQuestion: Question {
    
    var questionSentence: String = "When you study you are used to..."
    var answer1: String = "Underline"
    var answer2: String = "Write summaries"
    var answer3: String = "Read aloud"
    var answer4: String = "Walking"
    
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
                    .foregroundColor(Color("Purple"))
                Rectangle()
                    .frame(width: 40.0, height: 3.0)
                    .foregroundColor(Color("Purple"))
            }
            .padding(.bottom)
            
            NavigationLink(destination: ThirdQuestion(resultSelector: resultSelector), isActive: $pressed) {EmptyView()}
            
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
                    resultSelector += 1
                    pressed.toggle()
                } label: {
                    //Answer 2
                    AnswerButton(textInBox: answer2)
                }
                .padding(.bottom)
                
                
                Button {
                    resultSelector += 3
                    pressed.toggle()
                } label: {
                    //Answer 3
                    AnswerButton(textInBox: answer3)
                }
                .padding(.bottom)
                
                
                Button {
                    resultSelector += 4
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


struct SecondQuestion_Previews: PreviewProvider {
    static var previews: some View {
        SecondQuestion(resultSelector: 0)
    }
}
