//
//  CircleLinesAnimation.swift
//  
//
//  Created by Nika on 10/22/20.
//


import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
public struct CircleLinesAnimation: View {

    @State var isAnimating: Bool = false
    let color: Color
    let height: CGFloat
    public init(height: CGFloat? = 30, color: Color? = .blue){
        self.height = height ?? 30
        self.color = color ?? .blue
    }
    public var body: some View {
        GeometryReader { geo in
            ZStack {
                Circle()
                    .trim(from: 0.0, to: 0.8)
                    .stroke(style: StrokeStyle(lineWidth: self.height / 10, lineCap: .round, lineJoin: .round))
                    .rotationEffect(Angle(degrees: self.isAnimating ? -360 : 0))
                    .animation(Animation.easeInOut(duration: 1)
                        .repeatForever(autoreverses: false))

                Circle().trim(from: 0.0, to: 0.8)
                    .stroke(style: StrokeStyle(lineWidth: self.height / 15, lineCap: .round, lineJoin: .round))
                    .frame(width: geo.size.width * 0.6, height: geo.size.width * 0.6)
                    .rotationEffect(Angle(degrees: self.isAnimating ? -360 : 0))
                    .animation(Animation.easeInOut(duration: 1.3)
                        .repeatForever(autoreverses: false))
                Circle().trim(from: 0.0, to: 0.8)
                    .stroke(style: StrokeStyle(lineWidth: self.height / 20, lineCap: .round, lineJoin: .round))
                    .frame(width: geo.size.width * 0.3, height: geo.size.width * 0.3)
                    .rotationEffect(Angle(degrees: self.isAnimating ? -360 : 0))
                    .animation(Animation.easeInOut(duration: 1.6)
                        .repeatForever(autoreverses: false))
            }
        .foregroundColor(self.color)
        }.frame(width: height, height: height)
            .onAppear {
                self.isAnimating = true
        }
    }
}

