//
//  ViewController.swift
//  AnimationsApp
//
//  Created by ddyack on 17.09.2020.
//  Copyright © 2020 ddyack. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    
    @IBOutlet weak var animationViewText: UILabel!
    @IBOutlet weak var runAnimateButton: SpringButton!
    
    private let animations = Animation.getAnimations()
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runAnimateButton.setTitle("Run animation \(animations[count].animation)", for: .normal)
    }
    
    @IBAction func runAnimate() {
        setAnimation(for: animationView, animations: animations, index: count)
        animationViewText.textAlignment = .left
        animationViewText.text =
            """
                            Параметры используемой анимации:

                            Название - \(animationView.animation),
                            rotate - \(animationView.rotate),
                            duration: \(animationView.duration),
                            damping: \(animationView.damping),
                            velocity: \(animationView.velocity),
                            repeatCount: \(animationView.repeatCount),
                            curve: \(animationView.curve)
                            """
        count += 1
        
        if count == animations.count {
            count = 0
        }
        
        runAnimateButton.setTitle("Run animation \(animations[count].animation)", for: .normal)
    }
}

extension ViewController {
    func setAnimation(for view: SpringView, animations: [Animation], index: Int) {
        view.animation = animations[index].animation
        view.rotate = animations[index].rotate
        view.duration = animations[index].duration
        view.damping = animations[index].damping
        view.velocity = animations[index].velocity
        view.repeatCount = animations[index].repeatCount
        view.curve = animations[index].curve
        
        view.animate()
    }
}

