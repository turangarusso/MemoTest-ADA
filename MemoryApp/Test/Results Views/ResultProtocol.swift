//
//  ResultProtocol.swift
//  Memory
//

import SwiftUI

protocol Result: View {
    var memoryType:String { get set }
    var memoryImage:String { get set }
    var description:String { get set }
}
