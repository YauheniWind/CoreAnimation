//
//  ViewController.swift
//  CoreAnimation
//
//  Created by Евгений  Гравдин  on 08/12/2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

 
  @IBOutlet weak var animationView: SpringView!
  
  @IBOutlet weak var presetLabel: SpringLabel!
    
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    animationView.isHidden = true
  }
  
  

  @IBAction func runAnimationButtonPressed(_ sender: SpringButton) {
    getAnimation()
    
    let animation = Animation.getAnimation()
    sender.setTitle(animation.preset, for: .normal)
  }
  
  private func getAnimation() {
    let animation = Animation.getAnimation()
    
    presetLabel.text = animation.description
    
    animationView.isHidden = false
    animationView.animation = animation.preset
    animationView.curve = animation.curve
    animationView.force = animation.force
    animationView.duration = animation.duration
    animationView.delay = animation.delay
    animationView.animate()
  }
  
}

