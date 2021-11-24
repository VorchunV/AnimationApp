//
//  ViewController.swift
//  AnimationApp
//
//  Created by Варвара Фомина on 23.11.2021.
//

import Spring

class ViewController: UIViewController {
    
    private var animation = Animation.getAnimation()
    
    @IBOutlet var springImageView: SpringImageView!
    @IBOutlet var springInfoAnimation: SpringLabel!
    
    @IBOutlet var buttonPlay: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springInfoAnimation.text = "Here goes!"
    }
    
    @IBAction func pressButtonAnimation(_ sender: UIButton) {
        springInfoAnimation.text = animation.fullInformation
        springImageView.animation = animation.name
        springImageView.curve = animation.curve
        springImageView.delay = animation.delay
        springImageView.duration = animation.duration
        springImageView.force = animation.force
        springImageView.animate()
        
        animation = Animation.getAnimation()
        buttonPlay.setTitle("Play \(animation.name)", for: .normal)
    }
}

