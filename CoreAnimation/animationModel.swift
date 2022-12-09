//
//  animationModel.swift
//  CoreAnimation
//
//  Created by Евгений  Гравдин  on 09/12/2022.
//

import SpringAnimation


struct Animation {
  let preset: String
  let curve: String
  let force: Double
  let duration: Double
  let delay: Double
  
  
  var description: String {"""
  preset: \(preset)
  curve: \(curve)
  force: \(String(format: "%.02f", force))
  duration: \(String(format: "%.02f", duration))
  delay: \(String(format: "%.02f", delay))
"""
  }
  
}


extension Animation {
  static func getAnimation() -> Animation {
    Animation(preset: AnimationPreset.allCases.randomElement()?.rawValue ?? "",
              curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "",
              force: Double.random(in: 1...5),
              duration: Double.random(in: 1...5),
              delay: Double.random(in: 1...5))
  }
}
