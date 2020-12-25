//
//  ViewController.swift
//  PullStrap Bar
//
//  Created by Gokul Nair on 25/12/20.
//

import UIKit
import CoreGraphics

class ViewController: UIViewController {
    
    @IBOutlet weak var tabBarConstraints: NSLayoutConstraint!
    
    @IBOutlet weak var tabBarView: UIView!
    @IBOutlet weak var expandBtn: UIButton!
    @IBOutlet weak var firstBtn: UIButton!
    @IBOutlet weak var secondBtn: UIButton!
    @IBOutlet weak var thirdBtn: UIButton!
    
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarView.layer.cornerRadius = 20
     
        firstBtn.tintColor = .white
        
        let firstVC = self.storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as? FirstViewController
        
        firstVC!.willMove(toParent: self)
        self.containerView.addSubview(firstVC!.view)
        self.addChild(firstVC!)
        firstVC!.didMove(toParent: self)
    }
    
    @IBAction func firstButton(_ sender: UIButton) {
        sender.pulsate()
        firstBtn.tintColor = .white
        secondBtn.tintColor = .black
        thirdBtn.tintColor = .black
        expandBtn.tintColor = .black
        
        let firstVC = self.storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as? FirstViewController
        
        firstVC!.willMove(toParent: self)
        self.containerView.addSubview(firstVC!.view)
        self.addChild(firstVC!)
        firstVC!.didMove(toParent: self)
        
    }
    @IBAction func secondButton(_ sender: UIButton) {
        sender.pulsate()
        firstBtn.tintColor = .black
        secondBtn.tintColor = .white
        thirdBtn.tintColor = .black
        expandBtn.tintColor = .black
        
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        secondVC!.willMove(toParent: self)
        self.containerView.addSubview(secondVC!.view)
        self.addChild(secondVC!)
        secondVC!.didMove(toParent: self)
        
    }
    @IBAction func thirdButton(_ sender: UIButton) {
        sender.pulsate()
        firstBtn.tintColor = .black
        secondBtn.tintColor = .black
        thirdBtn.tintColor = .white
        expandBtn.tintColor = .black
        
        let thirdVC = self.storyboard?.instantiateViewController(withIdentifier: "thirdViewController") as? thirdViewController
        
        thirdVC!.willMove(toParent: self)
        self.containerView.addSubview(thirdVC!.view)
        self.addChild(thirdVC!)
        thirdVC!.didMove(toParent: self)
        
    }
    @IBAction func expandButton(_ sender: Any) {
        
        firstBtn.tintColor = .black
        secondBtn.tintColor = .black
        thirdBtn.tintColor = .black
        expandBtn.tintColor = .white
        
        if tabBarConstraints.constant == 23 {
            UIView.animate(withDuration: 1.0, animations: ({
                self.expandBtn.transform = CGAffineTransform(rotationAngle: 0.0)
            }))
            self.tabBarConstraints.constant = -310
            
            UIView.animate(withDuration: 1.5, animations: {
                self.view.layoutIfNeeded()
                
            })
            
            expandBtn.tintColor = .black
            
        }else{
            UIView.animate(withDuration: 1.5, animations: ({
                self.expandBtn.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI))
            }))
            self.tabBarConstraints.constant = 23
            UIView.animate(withDuration: 1.0, animations: {
                self.view.layoutIfNeeded()
            })
            
        }
        
    }
    
}


