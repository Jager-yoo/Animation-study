//
//  AnimationViewController.swift
//  AnimationPractice
//
//  Created by 유재호 on 2022/02/13.
//

import UIKit

class AnimationViewController: UIViewController {

    @IBOutlet weak var yagomImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func yagomEncounterErrorTapped(_ sender: UIButton) {
        UIView.animateKeyframes(withDuration: 0.1, delay: 0, options: [.repeat]) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/4) {
                self.yagomImageView.center = CGPoint(x: self.yagomImageView.center.x - 20,
                                                     y: self.yagomImageView.center.y)
            }
            UIView.addKeyframe(withRelativeStartTime: 1/4, relativeDuration: 1/4) {
                self.yagomImageView.center = CGPoint(x: self.yagomImageView.center.x + 20,
                                                     y: self.yagomImageView.center.y)
            }
            UIView.addKeyframe(withRelativeStartTime: 2/4, relativeDuration: 1/4) {
                self.yagomImageView.center = CGPoint(x: self.yagomImageView.center.x + 20,
                                                     y: self.yagomImageView.center.y)
            }
            UIView.addKeyframe(withRelativeStartTime: 3/4, relativeDuration: 1/4) {
                self.yagomImageView.center = CGPoint(x: self.yagomImageView.center.x - 20,
                                                     y: self.yagomImageView.center.y)
            }
        }
    }
    
    @IBAction func yagomBuyNewMacTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func yagomCustomTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func yagomAnimationStopTapped(_ sender: UIButton) {
        yagomImageView.layer.removeAllAnimations()
    }
}

