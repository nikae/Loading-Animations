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
    let color: Color

    public init(diametre: CGFloat? = 8, color: Color? = .blue) {
        self.diameter = diametre ?? 8
        self.color = color ?? .blue
    }

    public var body: some View {
        HStack {
                Circle()
                    .fill(color)
                    .frame(width: diameter, height: diameter)
                    .scaleEffect(shouldAnimate ? 1.0 : 0.5)
                    .animation(Animation.easeInOut(duration: 0.5).repeatForever())
                Circle()
                    .fill(color)
                    .frame(width: diameter, height: diameter)
                    .scaleEffect(shouldAnimate ? 1.0 : 0.5)
                    .animation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.3))
                Circle()
                    .fill(color)
                    .frame(width: diameter, height: diameter)
                    .scaleEffect(shouldAnimate ? 1.0 : 0.5)
                    .animation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.6))
        }
        .frame(height: 12)
        .onAppear {
            self.shouldAnimate = true
        }
    }
}

//public struct DotsScaleActivityIndicator_Previews: PreviewProvider {
//    @available(iOS 13.0.0, *)
//    public static var previews: some View {
//            DotsScaleActivityIndicator()
//    }
//}
