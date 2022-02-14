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
        yagomImageView.layer.borderWidth = 1
        yagomImageView.layer.borderColor = UIColor.opaqueSeparator.cgColor
    }
    
    @IBAction func yagomEncounterErrorTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveLinear) {
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
    }
    
    @IBAction func yagomBuyNewMacTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveLinear) {
            UIView.animateKeyframes(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse]) {
                UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1) {
                    self.yagomImageView.transform = CGAffineTransform(scaleX: 1.6, y: 1)
                }
                UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1) {
                    self.yagomImageView.transform = CGAffineTransform(scaleX: 1, y: 1.6)
                }
            }
        }
    }
    
    @IBAction func yagomCustomTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func yagomAnimationStopTapped(_ sender: UIButton) {
        yagomImageView.layer.removeAllAnimations()
        yagomImageView.transform = .identity
    }
}

