//
//  DataManager.swift
//  AnimationsApp
//
//  Created by ddyack on 17.09.2020.
//  Copyright © 2020 ddyack. All rights reserved.
//

class DataManager {
    static let shared = DataManager()
    
    private init() {}
    
    let animationsAndCurves = ["slideDown" : "easeIn",
                               "squeezeUp" : "easeInOut",
                               "fadeInLeft" : "linear",
                               "zoomIn" : "spring",
                               "zoomOut" : "easeOutCubic",
                               "shake" : "easeInBack"]
}
