//
//  FirstQuestion.swift
//  Memory
//


import SwiftUI

struct FirstQuestion: Question {
    
    var questionSentence: String = "When you go out shopping, do you usually..."
    var answer1: String = "Write a list of things to buy"
    var answer2: String = "Repeat in mind the things to buy"
    var answer3: String = "Repeat the things to buy aloud"
    var answer4: String = "Make a virtual list using your fingers to count"
    
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
                    .foregroundColor(Color("Purple"))
                Rectangle()
                    .frame(width: 40.0, height: 3.0)
                    .foregroundColor(Color("Purple"))
                Rectangle()
                    .frame(width: 40.0, height: 3.0)
                    .foregroundColor(Color("Purple"))
            }
            .padding(.bottom)
            
            
            NavigationLink(destination: SecondQuestion(resultSelector: resultSelector), isActive: $pressed) {EmptyView()}
            VStack{
                
                Button {
                    resultSelector += 1
                    pressed.toggle()
                } label: {
                    //Answer 1
                    AnswerButton(textInBox: answer1)
                }
                .padding(.bottom)
                
                
                Button {
                    resultSelector += 2
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


struct FirstQuestion_Previews: PreviewProvider {
    static var previews: some View {
        FirstQuestion(resultSelector: 0)
    }
}
