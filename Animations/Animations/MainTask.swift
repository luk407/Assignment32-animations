//
//  ContentView.swift
//  Animations
//
//  Created by Luka Gazdeliani on 23.12.23.
//

import SwiftUI

struct MainTask: View {
    
    @State private var isAnimated = false
    
    var body: some View {
        VStack {
            Text("TBC IT Academy")
                .font(.system(size: 20))
                .foregroundStyle(isAnimated ? .red : .blue)
                .scaleEffect(isAnimated ? 2 : 1)
                .offset(CGSize(width: 0, height: isAnimated ? -100 : 0))
                .onAppear {
                    withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                        isAnimated.toggle()
                    }
                }
                .padding()
        }
    }
}

#Preview {
    MainTask()
}
