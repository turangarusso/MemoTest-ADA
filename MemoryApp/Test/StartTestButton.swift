//
//  StartTestButton.swift
//  MemoryApp
//


import SwiftUI

struct StartTestButton: View {
    @State private var fadeButton = false //Animation Variable
    
    var body: some View{
        ZStack(){
            //Effect Circumference
            Circle()
                .stroke(Color("Cyan"), lineWidth: 3.0)
                .frame(width: 145.0, height: 145.0)
                .blur(radius: 2.0)
                .opacity(fadeButton ? 0 : 0.4)
                .scaleEffect(fadeButton ? 1.5 : 1.0)
            
            ZStack{
                //Cyan Circle
                Circle()
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(Color("Cyan"))
                    .shadow(radius: 1.0)
                Text("Start")
                    .font(.system(size: 36.0))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
            }
        }.onAppear{
            DispatchQueue.main.async {            withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: false)){
                fadeButton.toggle()}
            }
        }
    }
    
    struct StartTestButton_Previews: PreviewProvider {
        static var previews: some View {
            StartTestButton()
        }
    }
}
