//
//  Tips.swift
//  Memory
//
//  Created by giovanni russo on 17/10/22.
//

import SwiftUI

struct Tips: View {
    
    @State var selection: Int = 1
    @State var presente: Bool = false
    
    var symbol1 : String = "star"
    var symbol2 : String = ""
    var cont: Int = 0
    var def = UserDefaults.standard

    var body: some View {
        VStack{
         
            Picker(selection: $selection, label: Text("Picker")) {
                
                Text("All Tips").tag(1)
                
                Text("Favourite Tips").tag(2)
                
            }
            .padding(.top, 40.0)
            .padding(.horizontal)
            .frame(width: 380.0, height: 50.0)
            .pickerStyle(.segmented)
            
            Spacer()
            
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack(alignment: .top, spacing: 63){
                    
                    if selection == 1{
                        
                        ForEach(littleTip){num in
                            
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
                                            
                                            //RectangleTip()
                                        
                                        }
                                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                                        
                                        Text("")
                                            .font(.system(size: 32, weight: .semibold))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(.white)
                                            .padding(.bottom)
                                        
                                            Button(action: {
                                                littleTip[num.id-1].starred = !littleTip[num.id-1].starred
                                                def.set(!num.starred, forKey: num.title)
                                                selection = 2
                                                selection = 1
                                            }) {
                                             
                                                Image(systemName: def.bool(forKey: num.title) == true ? "star.fill" : "star")
                                                      .resizable()
                                                      .frame(width: 40, height: 40)
                                                      .foregroundColor(.yellow)
                                                      .padding(.bottom, 400.0)
                                                      .padding(.leading, 250.0)
                                            }
                                        
                                    }
                                    .scaleEffect(.init(width: scale, height: scale))
                                    //.animation(.spring(), value: 1)
                                    .animation(.easeOut(duration: 1))
                                    .padding(.vertical)
                                    
                                } // end Geometry
                                .frame(width: 230, height: 500)
                                .padding(.horizontal, 32)
                                .padding(.vertical, 48)
                            
                            }//end for loop
                            Spacer()
                                .frame(width:48)
                        } //End if selection
                    else {
                        ForEach(littleTip){num in
                            
                            if def.bool(forKey: num.title) == true{
                                GeometryReader{ proxy in
                                    let scale = getScale(proxy: proxy)
                                    ZStack(alignment : .bottom){
                                        ZStack{
                                            Image(num.Immagine )
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 320, height: 460)
                                                .clipped()
                                                .cornerRadius(20)
                                                .overlay(RoundedRectangle(cornerRadius: 20)
                                                    .stroke(Color(white: 0.4))            )
                                                .shadow(radius: 8)
                                            
                                            //RectangleTip()
                                            
                                        } //end zstack2 included
                                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                                        
                                        Text("")
                                            .font(.system(size: 32, weight: .semibold))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(.white)
                                            .padding(.bottom)
                            
                                    }// End ZStack 1
                                    .scaleEffect(.init(width: scale, height: scale))
                                    //.animation(.spring(), value: 1)
                                    .animation(.easeOut(duration: 1))
                                    .padding(.vertical)
                                    
                                } // end Geometry
                                .frame(width: 230, height: 500)
                                .padding(.horizontal, 32)
                                .padding(.vertical, 48)
                                
                            }// end controllo if starred
                        
                            EmptyView()
                        } //end for
                        
                        Spacer()
                            .frame(width:80,height:100)
                    }//end else
                    
                }//end hstack

            }//end scrollview
            
            .padding(.bottom)
            Spacer()
        }//end VStack
        
    }//end body
    
    func ruxo(){
        let cont = 0...6
        for number in cont {
            if littleTip[number].starred == true{
                presente = true
            }
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

struct Tips_Previews: PreviewProvider {
    static var previews: some View {
        Tips()
    }
}
