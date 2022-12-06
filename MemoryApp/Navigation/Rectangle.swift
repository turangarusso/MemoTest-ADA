//
//  Rectangle.swift
//  MemoryApp
//
//  Created by giovanni russo on 27/10/22.
//

import SwiftUI

struct RectangleTip: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20.0)
            .foregroundColor(.clear)
            .background(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom))
            .frame(width: 320, height: 460, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 20.0))
    }
}

struct Rectangle_Previews: PreviewProvider {
    static var previews: some View {
        RectangleTip()
    }
}
