//
//  CircleUiView.swift
//  TrafficSwiftUI
//
//  Created by mac on 27.05.2022.
//

import SwiftUI

struct CircleUiView: View {
    var valueOpacity: Bool!
    var color: Color!
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color).opacity(valueOpacity ? 1.0 : 0.3)
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
    }
    
    init(color: Color, valueOpacity: Bool) {
        self.color = color
        self.valueOpacity = valueOpacity
    }
}


