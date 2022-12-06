//
//  Tile.swift
//  Simon Game iOS
//


import SwiftUI

struct TileView: View {
    var color: Color
    
    @Binding var bright: Bool
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 100.0, height: 100.0)
                .cornerRadius(20.0)
                .foregroundColor(color)
            
            Rectangle()
                .frame(width: 80.0, height: 80.0)
                .cornerRadius(20.0)
                .foregroundColor(bright ? .white : color)
                .shadow(radius: 50.0)
                .blur(radius: 2.5)
        }
    }
    
    
}

struct TileView_Previews: PreviewProvider {
    static var previews: some View {
        TileView(color: .red, bright: .constant(false))
    }
}
