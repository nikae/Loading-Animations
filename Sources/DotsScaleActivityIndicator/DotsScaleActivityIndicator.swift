//
//  DotsScaleActivityIndicator.swift
//  
//
//  Created by Nika on 10/21/20.
//

import SwiftUI

@available(iOS 13.0, macOS 10.15, *)

public struct DotsScaleActivityIndicator: View {
    @State private var shouldAnimate = false
    let diameter: CGFloat

    public init(diametre: CGFloat? = 8) {
        self.diameter = diametre ?? 8
    }

    public var body: some View {
        HStack {
            Circle()
                .fill(Color.blue)
                .frame(width: diameter, height: diameter)
                .scaleEffect(shouldAnimate ? 1.0 : 0.5)
                .animation(Animation.easeInOut(duration: 0.5).repeatForever())
            Circle()
                .fill(Color.blue)
                .frame(width: diameter, height: diameter)
                .scaleEffect(shouldAnimate ? 1.0 : 0.5)
                .animation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.3))
            Circle()
                .fill(Color.blue)
                .frame(width: diameter, height: diameter)
                .scaleEffect(shouldAnimate ? 1.0 : 0.5)
                .animation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.6))
        }
        .onAppear {
            self.shouldAnimate = true
        }
    }

}