//
//  VisuallyResult.swift
//  Memory
//

import SwiftUI

struct AuditoryResult: Result {
    var memoryType: String = "AUDITORY"
    var memoryImage: String = "ear"
    var description: String = "Auditory memory consists in the ability to memorize sounds, dialogues and more generally vocabulary and words. \n\nAnd above all to memorize through sound, its listening and its reproduction, creating mental images related to the perception of sounds and words."
    
    let subTitle:String = "Your Memory Type is:"
    @State var pressed = false
    
    var body: some View {
        
        VStack{
            
            Text(subTitle)
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.top, 20.0)

            
            Text(memoryType)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("Green"))
                .padding(.top)
                    
            Image(systemName: memoryImage)
                .resizable()
                .scaledToFit()
                .foregroundColor(Color("Green"))
                .frame(width: 100.0, height: 100.0)
            
            Spacer()
            
            Text(description)
                .font(.title3)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            NavigationLink(destination: Navigation(), isActive: $pressed) {EmptyView()}
            
            GameTips()
                .onTapGesture {
                    pressed.toggle()
                }
        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Test Result")
        .padding(.horizontal)
    }
}

struct AuditoryResult_Previews: PreviewProvider {
    static var previews: some View {
        AuditoryResult()
    }
}
