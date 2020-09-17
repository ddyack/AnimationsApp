//
//  Animation.swift
//  AnimationsApp
//
//  Created by ddyack on 17.09.2020.
//  Copyright © 2020 ddyack. All rights reserved.
//

import Spring

struct Animation {
    let animation: String
    let rotate: CGFloat
    let duration: CGFloat
    let damping: CGFloat
    let velocity: CGFloat
    let repeatCount: Float
    let curve: String
    
}

extension Animation {
    static func getAnimations() -> [Animation] {
        var animations: [Animation] = []
        DataManager.shared.animationsAndCurves.forEach { anime, curve  in
            animations.append(
                Animation(animation: anime,
                          rotate: CGFloat.random(in: 1..<5).roundTo(places: 2),
                          duration: CGFloat.random(in: 1..<2).roundTo(places: 2),
                          damping: CGFloat.random(in: 1..<2).roundTo(places: 2),
                          velocity: CGFloat.random(in: 1..<2).roundTo(places: 2),
                          repeatCount: Float.random(in: 1...3).rounded(),
                          curve: curve))
        }
        return animations
    }
}

extension CGFloat {
    func roundTo(places:Int) -> CGFloat {
        let divisor = pow(10.0, CGFloat(places))
        return (self * divisor).rounded() / divisor
    }
}
