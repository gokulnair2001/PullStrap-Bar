//
//  UIButtonExtensions.swift
//  PullStrap Bar
//
//  Created by Gokul Nair on 25/12/20.
//

import Foundation
import UIKit

extension UIButton{
    func pulsate() {
    let pulse = CASpringAnimation(keyPath: "transform.scale")
    pulse.duration = 0.5
    pulse.fromValue = 0.5
    pulse.toValue = 1.0
    pulse.autoreverses = false
    pulse.repeatCount = 0
    pulse.initialVelocity = 0.5
    pulse.damping = 1.0
    layer.add(pulse, forKey: nil)
    }

    func flash() {
    let flash = CABasicAnimation(keyPath: "opacity")
    flash.duration = 0.3
    flash.fromValue = 1
    flash.toValue = 0.1
    flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
    flash.autoreverses = true
    flash.repeatCount = 2
    layer.add(flash, forKey: nil)
    }

    
}

