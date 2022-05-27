//
//  TrafficView.swift
//  TrafficSwiftUI
//
//  Created by mac on 26.05.2022.
//

import SwiftUI

struct TrafficView: View {
    
    @State private var red = false
    @State private var yellow = false
    @State private var green = false
    @State private var titleButton = "START"
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                CircleUiView(color: .red, valueOpacity: red)
                CircleUiView(color: .yellow, valueOpacity: yellow)
                CircleUiView(color: .green, valueOpacity: green)
                
                Spacer()
                
                Button(titleButton) {
                    titleButton = "NEXT"
                    changeLight()
                }
                .foregroundColor(.white)
                .font(.title)
                .frame(width: 200, height: 50)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay(Rectangle().stroke(Color.white, lineWidth: 4)).cornerRadius(20)
            }
            .padding()
        }
    }
    
    private func changeLight() {
        if red {
            red.toggle()
            yellow.toggle()
        } else if yellow {
            yellow.toggle()
            green.toggle()
        } else if green {
            green.toggle()
            red.toggle()
        } else {
            red.toggle()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficView()
    }
}
