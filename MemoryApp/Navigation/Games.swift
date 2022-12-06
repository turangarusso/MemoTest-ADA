//
//  Games.swift
//  Memory
//
//  Created by giovanni russo on 17/10/22.
//

import SwiftUI

struct Games: View {
    
    @State var pressed = false
    
    var body: some View {
        VStack{
            NavigationLink(destination: GameView(), isActive: $pressed) {EmptyView()}
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 63){
                    
                    ForEach(gameCard){ num in
                        GeometryReader{ proxy in
                            
                            let scale = getScale(proxy: proxy)
                            
                            ZStack(alignment : .bottom){
                                ZStack{
                                    Image(num.Immagine)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 320, height: 460)
                                        .clipped()
                                        .cornerRadius(20)
                                        .overlay(RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color(white: 0.4))            )
                                        .shadow(radius: 8)
                                    
                                    RoundedRectangle(cornerRadius: 20.0)
                                        .foregroundColor(.clear)
                                        .frame(width: 320, height: 460, alignment: .center)
                                        .clipShape(RoundedRectangle(cornerRadius: 20.0))
                                    
                                    VStack{
                                        
                                        Spacer()
                                        
                                        Text(num.title)
                                            .font(.system(size: 32, weight: .semibold))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(.black)
                                        
                                        Button {
                                            pressed.toggle()
                                        } label: {
                                            HStack{
                                                Text("Play")
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(Color("Orange"))
                                                Image(systemName: "gamecontroller")
                                                    .foregroundColor(Color("Orange"))
                                            }
                                        }
                                    }
                                    .padding(.bottom, 30.0)
                                }
                                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                            }
                            .scaleEffect(.init(width: scale, height: scale))
                            .animation(.easeOut(duration: 1))
                            .padding(.bottom)
                            
                        } // end Geometry
                        .frame(width: 230, height: 500)
                        .padding(.horizontal, 32)
                        .padding(.vertical, 48)
                    }
                    Spacer()
                        .frame(width:48)
                } //EndHStack
            }//End ScrollView
        }
    }
        
        func getScale(proxy: GeometryProxy) -> CGFloat{
            let midPoint: CGFloat = 125
            
            let viewFrame = proxy.frame(in: CoordinateSpace.global)
            
            var scale: CGFloat = 1.0
            let deltaXAnimationThreshold: CGFloat = 125
            
            let diffFromCenter = abs(midPoint - viewFrame.origin.x - deltaXAnimationThreshold / 2)
            if diffFromCenter < deltaXAnimationThreshold{
                scale = 1 + (deltaXAnimationThreshold - diffFromCenter) / 500
            }
            
            return scale
        }
    }
    
struct Games_Previews: PreviewProvider {
    static var previews: some View {
        Games()
    }
}

