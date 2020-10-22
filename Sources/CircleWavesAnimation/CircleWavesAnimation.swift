//
//  CircleWavesAnimation.swift
//  
//
//  Created by Nika on 10/22/20.
//


import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
public struct CircleWavesAnimation: View {

    @State var isAnimating: Bool = false
    let color: Color
    let height: CGFloat
    public init(height: CGFloat? = 30, color: Color? = .blue){
        self.height = height ?? 30
        self.color = color ?? .blue
    }
    public var body: some View {
        Circle()
            .fill(color)
            .frame(width: height, height: height)
            .overlay(
                ZStack {
                    Circle()
                        .stroke(color, lineWidth: height * 3.3)
                        .scaleEffect(isAnimating ? 1 : 0)
                    Circle()
                        .stroke(color, lineWidth: height * 3.3)
                        .scaleEffect(isAnimating ? 1.5 : 0)
                    Circle()
                        .stroke(color, lineWidth: height * 3.3)
                        .scaleEffect(isAnimating ? 2 : 0)
                }
                .opacity(isAnimating ? 0.0 : 0.2)
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: false))
        )
            .onAppear {
                self.isAnimating = true
        }
    }

}

