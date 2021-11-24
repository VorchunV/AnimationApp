//
//  Animation.swift
//  AnimationApp
//
//  Created by Варвара Фомина on 24.11.2021.
//


struct Animation {
    
    let name: String
    let duration: Double
    let curve: String
    let force: Double
    let delay: Double
    
    var fullInformation: String {
        """
    "Name: \(name)"
    "Duration: \(String(format: "%.2f",duration))"
    "Cure: \(curve)"
    "Force: \(String(format: "%.2f", force))"
    "Delay: \(delay)"
    """
    }
}

extension Animation {
    
    static func getAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animation.randomElement()?.rawValue ?? "",
            duration: Double.random(in: 1...3),
            curve: DataManager.shared.curve.randomElement()?.rawValue ?? "",
            force: Double.random(in: 1...2),
            delay: 0.2
        )
    }
}
