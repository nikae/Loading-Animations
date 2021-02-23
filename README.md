# Loading Animations

SwiftUI Package for loading animations.

Installation:

Platforms: [.iOS(.v13), .watchOS(.v6), .macOS(.v10_15)]!

In Xcode go to File -> Swift Packages -> Add Package Dependency and paste in the repo's url: https://github.com/nikae/Loading-Animations.git

Usage:

import one or more package in the file you would like to use it: 
import CircleLinesAnimation
import CircleWavesAnimation
import DotsCircularAnimation
import ScalingDotsActivityIndicator

"CircleWavesAnimation"
  CircleWavesAnimation(height: 50, color: .yellow)
              
            
"CircleLinesAnimation"
CircleLinesAnimation(height: 50, color: .red)
              
"DotsCircularAnimation"
DotsCircularAnimation(color: .green)
  .frame(width: 50, height: 50, alignment: .center)
                
"ScalingDotsActivityIndicator"
ScalingDotsActivityIndicator(diametre: 8, height: 50, color: .blue)
 
