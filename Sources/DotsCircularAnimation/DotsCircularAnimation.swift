//
//  DotsCircularAnimation.swift
//  
//
//  Created by Nika on 10/21/20.
//

import SwiftUI

@available(iOS 13.0, *)
public struct DotsCircularAnimation: View {

    @State var isAnimating: Bool = false
    let color: Color
    public init(color: Color? = .blue){
        self.color = color ?? .blue
    }

    public var body: some View {
        GeometryReader { (geometry: GeometryProxy) in
            ForEach(0..<5) { index in
                Group {
                    Circle()
                        .frame(width: geometry.size.width / 5, height: geometry.size.height / 5)
                        .scaleEffect(!self.isAnimating ? 1 - CGFloat(index) / 5 : 0.2 + CGFloat(index) / 5)
                        .offset(y: geometry.size.width / 10 - geometry.size.height / 2)
                }.frame(width: geometry.size.width, height: geometry.size.height)
                    .rotationEffect(!self.isAnimating ? .degrees(0) : .degrees(360))
                    .animation(Animation
                        .timingCurve(0.5, 0.15 + Double(index) / 5, 0.25, 1, duration: 1.5)
                        .repeatForever(autoreverses: false))
            }
        }
        .aspectRatio(1, contentMode: .fit)
    .foregroundColor(color)
        .onAppear {
            self.isAnimating = true
        }
    }
}

struct DotsCircularAnimation_Previews: PreviewProvider {
    @available(iOS 13.0.0, *)
    static var previews: some View {
        DotsCircularAnimation()
    }
}
