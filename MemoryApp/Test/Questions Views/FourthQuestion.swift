//
//  FirstQuestion.swift
//  Memory
//


import SwiftUI

struct FourthQuestion: Question {
    
    var questionSentence: String = "Receive telephone instructions from a friend on how to use an appliance. What will you do?"
    var answer1: String = "I carry out the various operations at the same time."
    var answer2: String = "I repeat to my friend what he just told me."
    var answer3: String = "I note the various steps"
    var answer4: String = "I repeat in mind"
    
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
                    .foregroundColor(Color("Cyan"))
            }
            .padding(.bottom)
            
            
            
            VStack{
                
                Button {
                    resultSelector += 4
                    pressed.toggle()
                } label: {
                    //Answer 1
                    AnswerButton(textInBox: answer1)
                }
                .padding(.bottom)
                
                
                Button {
                    resultSelector += 3
                    pressed.toggle()
                } label: {
                    //Answer 2
                    AnswerButton(textInBox: answer2)
                }
                .padding(.bottom)
                
                
                Button {
                    resultSelector += 2
                    pressed.toggle()
                } label: {
                    //Answer 3
                    AnswerButton(textInBox: answer3)
                }
                .padding(.bottom)
                
                Button {
                    resultSelector += 1
                    pressed.toggle()
                } label: {
                    //Answer 4
                    AnswerButton(textInBox: answer4)
                }
            }
            .padding(.bottom, 34.0)
            Spacer()
            
            if(resultSelector >= 4 && resultSelector <= 6){
                NavigationLink(destination: TactileResult(), isActive: $pressed) {EmptyView()}
            }
            else if(resultSelector >= 7 && resultSelector <= 9){
                NavigationLink(destination: VisualResult(), isActive: $pressed) {EmptyView()}
            }
            else if(resultSelector >= 10 && resultSelector <= 12){
                NavigationLink(destination: AuditoryResult(), isActive: $pressed) {EmptyView()}
            }
            else if(resultSelector >= 13){
                NavigationLink(destination: KineticResult(), isActive: $pressed) {EmptyView()}
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}


struct FourthQuestion_Previews: PreviewProvider {
    static var previews: some View {
        FourthQuestion(resultSelector: 0)
    }
}
