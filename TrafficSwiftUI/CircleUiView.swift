//
//  CircleUiView.swift
//  TrafficSwiftUI
//
//  Created by mac on 27.05.2022.
//

import SwiftUI

struct CircleUiView: View {
    let color: Color
    let valueOpacity: Bool
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color).opacity(valueOpacity ? 1.0 : 0.3)
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
    }
    
  
}


